# Incorporating Photovoltaic and Wind Energy into Power Grid Operations
**Renewable-Aware Unit Commitment in MATLAB**

This repository contains MATLAB scripts to study the impact of photovoltaic (PV) and wind energy integration on unit commitment (UC) scheduling and generation costs. The project implements optimization and heuristic approaches to balance generation costs, startup/shutdown dynamics, and renewable availability.

**Overview**

**Objective:** Minimize generation cost while meeting hourly load demands under different renewable (solar/wind) scenarios.

**Core Optimization:** Uses fmincon for cost minimization with generator limits and load balance constraints.

**Decision Considerations:**
  - Unit commitment status of generators (on/off).
  - Startup and shutdown costs.
  - Renewable availability reducing net demand.

**How to Run:**
  - Open MATLAB and clone/download this repository.
  - Run the main script.
  - The script will:
      - Load generator and load profile data.
      - Apply renewable profiles (solar/wind) via sub_loadfilenames.m.
      - Call f_opt.m to optimize hourly generation.
      - Compute startup/shutdown costs.
      - Generate and save figures.
   
**Scenarios Simulated:**

  - Sunny–Windy Day
  - Sunny–Windy Night
  - Sunny–Windy Continuous
  - Cloudy–Windy Continuous
  - Cloudy–Windy Night
  - Cloudy–Windy Day
  - No solar/wind (baseline)

**Outputs:**
  - Hourly startup/shutdown costs (bar charts).
  - Total generation over the day per scenario (line plots).
  - Unit commitment schedules for each generator.
  - Total cost comparison across all scenarios.

**Author:**
  - Developed by Behnam Jabbari Marand, Ph.D. Student, NC State University
  - Focus: Optimization, integer programming, and power systems applications.



