/**
 * @file
 * @author  Tom Nahum <tom.nachum@gmail.com>
 *
 * @section DESCRIPTION
 */

// ------------------------------ includes ------------------------------
#include "PertProblem.h"
#include <cmath>
#include <iostream>
#include <vector>
#include <algorithm>

// -------------------------- const definitions -------------------------


// ------------------------------ functions -----------------------------

std::string PertProblem::toABC[] = {"A", "B", "C", "D", "E", "F", "G",
                                    "H", "I", "J", "K", "L", "M", "N"};

PertProblem::PertProblem(int numOfActivities, const int *preActivities, const int *times)
        : _numOfActivities(numOfActivities), _maxEF(0),
        _preActivities(new int[numOfActivities * numOfActivities]),
        _times(new int[numOfActivities]), _ES(new int[numOfActivities]), _EF(new int[numOfActivities]),
        _LF(new int[numOfActivities]), _LS(new int[numOfActivities]), _SL(new int[numOfActivities])
{
    for (int i = 0; i < numOfActivities; i++)
    {
        _times[i] = times[i];
        _ES[i] = EMPTY;
        _EF[i] = EMPTY;
        _LF[i] = EMPTY;
        _LS[i] = EMPTY;
        _SL[i] = EMPTY;
        for (int j = 0; j < numOfActivities; j++)
        {
            _preActivities[i * numOfActivities + j] = preActivities[i * numOfActivities + j];
        }
    }
}

PertProblem::~PertProblem()
{
    delete[] _preActivities;
    delete[] _times;
    delete[] _ES;
    delete[] _EF;
    delete[] _LF;
    delete[] _LS;
    delete[] _SL;
}

void PertProblem::printData()
{
    std::string space = std::string(_numOfActivities * 2 - 4, ' ');
    std::cout << "Act\tPre" << space << "T\tES\tEF\tLF\tLS\tSL\n";
    for (int i = 0; i < _numOfActivities; i++)
    {
        std::cout << toABC[i] << "\t";
        for (int j = 0; j < _numOfActivities; j++)
        {
            int curPre = _preActivities[i * _numOfActivities + j];
            if (curPre == INIT_ACT)
            {
                std::cout << '-';
            }
            else if (curPre != EMPTY)
            {
                std::cout << toABC[curPre];
                if (_preActivities[i * _numOfActivities + j + 1] != EMPTY)
                {
                    std::cout << ',';
                }
            }
            else
            {
                std::cout << ' ' << ' ';
            }
        }
        std::cout << _times[i] << "\t" << _ES[i] << "\t" <<
                  _EF[i] << "\t" << _LF[i] << "\t" << _LS[i] << "\t" << _SL[i] << std::endl;
    }
    std::cout << "\n";
    std::cout << "Critical Path is: " << _criticalPath << std::endl;
    std::cout << "The shortest time to finish the project is: " << _maxEF << std::endl;
    std::cout << "\n\n";
}

void PertProblem::outputData(std::string &ES, std::string &EF, std::string &LF,
                             std::string &LS, std::string &SL, std::string &path, int &time) const
{
    for (int i = 0; i < _numOfActivities; i++)
    {
        ES.append(std::to_string(_ES[i])).append(" ");
        EF.append(std::to_string(_EF[i])).append(" ");
        LF.append(std::to_string(_LF[i])).append(" ");
        LS.append(std::to_string(_LS[i])).append(" ");
        SL.append(std::to_string(_SL[i])).append(" ");
    }
    path = _criticalPath;
    time = _maxEF;
}

void PertProblem::findMaxPreEF(int i, int &filled)
{
    int max = 0;
    for (int j = i * _numOfActivities; j < (i * _numOfActivities) + _numOfActivities; j++)
    {
        int activity = _preActivities[j];
        if (activity != EMPTY)
        {
            if (_EF[activity] == EMPTY)
            { //in case that we didn't fiiled a pre activity EF
                return; //we skeep the current activity for now, and back to it in the next iteration.
            }
            max = (int) fmax(max, _EF[activity]);
        }
    }
    _ES[i] = max;
    _EF[i] = _ES[i] + _times[i];
    filled++;
}

void PertProblem::calcESEF()
{
    int filled = 0;
    while (filled != _numOfActivities)
    {
        for (int i = 0; i < _numOfActivities; i++)
        {
            if (_EF[i] == EMPTY){
                int curActivity = _preActivities[i * _numOfActivities];
                if (curActivity == INIT_ACT)
                {
                    _ES[i] = 0;
                    _EF[i] = _times[i];
                    filled++;
                }
                else
                {
                    findMaxPreEF(i, filled);
                }
            }
        }
    }
}

bool PertProblem::canCalcLF(int curAct, std::vector<int> &lsOfPre, bool &found)
{
    for (int i = _numOfActivities - 1; i >= 0; i--)
    {
        if (i != curAct){
            for (int j = 0; j < _numOfActivities; j++)
            {
                int pre = _preActivities[i * _numOfActivities + j];
                if (pre == EMPTY)
                {
                    continue;
                }
                else if (pre == curAct)
                {
                    found = true;
                    if (_LS[i] == EMPTY)
                    {
                        return false;
                    }
                    lsOfPre.push_back(_LS[i]);
                }
            }
        }
    }
    return true;
}

void PertProblem::calcLFLS()
{
    int filled = 0;
    int maxEF = findMaxEF();
    while (filled != _numOfActivities)
    {
        for (int curAct = _numOfActivities - 1; curAct >= 0; curAct--)
        {
            if( _LS[curAct] == EMPTY){
                //looking for cur activity in pre-activities of other activities:
                bool found = false;
                std::vector<int> lsOfPre;
                if (!canCalcLF(curAct, lsOfPre, found))
                {
                    continue; //to the next activity, later we will fill this one.
                }
                filled++;
                if (!found)
                {
                    _LF[curAct] = maxEF;
                    _LS[curAct] = maxEF - _times[curAct];
                }
                else
                {
                    _LF[curAct] = *std::min_element(lsOfPre.begin(), lsOfPre.end());
                    _LS[curAct] = _LF[curAct] - _times[curAct];
                }
            }
        }
    }
}

int PertProblem::findMaxEF() const
{
    return *std::max_element(_EF, _EF + _numOfActivities);
}

void PertProblem::solve()
{
    calcESEF();
    calcLFLS();
    for (int i = 0; i < _numOfActivities; i++)
    {
        _SL[i] = _LF[i] - _EF[i];
        if (_SL[i] == 0)
        {
            _criticalActs.emplace_back(i, false);
        }
    }
    findCriticalPath();
    _maxEF = findMaxEF();
}

void PertProblem::findCriticalPath()
{
    int numOfActs = _criticalActs.size();
    int initAct = 0;
    for (auto &_criticalAct : _criticalActs)
    {
        if (_preActivities[_criticalAct.first * _numOfActivities] == INIT_ACT)
        {
            initAct = _criticalAct.first;
            _criticalAct.second = true;
            numOfActs--;
        }
    }
    _criticalPath.append(toABC[initAct]);
    int preAct = initAct;
    while (numOfActs != 0)
    {
        for (auto &_criticalAct : _criticalActs)
        {
            if (!_criticalAct.second)
            {
                int act = _criticalAct.first;
                for (int j = _numOfActivities * act; j < _numOfActivities * act + _numOfActivities && j != EMPTY; j++)
                {
                    if (preAct == _preActivities[j])
                    {
                        _criticalPath.append("->");
                        _criticalPath.append(toABC[act]);
                        numOfActs--;
                        preAct = act;
                        _criticalAct.second = true;
                    }
                }
            }
        }
    }
}