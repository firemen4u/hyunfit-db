On windows powershell run `"bash ./run.bat"`

or run manually `"python concat.py"`


# 변경내역

## 2023-09-15

### exercise 테이블

**추가됨**

- exc_rep_count_per_set (운동의 한 세트당 동작 수)

**삭제됨**

- exc_url 삭제

### member 테이블 (member_profile도 동일)

**추가됨**

- mbr_back_disk_considered (허리디스크 고려여부)

**변경됨**

- mbr_exercise_**preference** → mbr_exercise_**target**
- mbr_knee_health → mbr_knee_health_**considered**
- mbr_noise_**consideration** → mbr_noise_**considered**
- mbr_**sitting_duration** → mbr_**long_sitter**

### routine 테이블

**추가됨**

- rtn_reward_point (보상)
- rtn_goal (루틴 목적)
- rtn_target (루틴 타켓: 상, 하체, 유산소 등등)
- rtn_experience_level (권장 경력)
- rtn_knee_health_considered (무릎 건강이 고려된 루틴인지 여부)
- rtn_noise_considered (소음 고려 여부)
- rtn_long_sitter (오래 앉아있는 사람을 위한 루틴인지)
- rtn_neck_shoulder_focused (목과 어깨에 초점을 맞춘 루틴인지)
- rtn_back_disk_considered (허리디스크 고려여부)

**변경됨**

- rtn_url → rtn_**thumbnail**_url
- rtn_**difficulty** → rtn_**experience_level**