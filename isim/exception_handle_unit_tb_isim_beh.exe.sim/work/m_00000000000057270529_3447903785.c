/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/soteloa/cpe142datpth/exception_handle_unit.v";
static unsigned int ng1[] = {15U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {11U, 0U};
static unsigned int ng4[] = {8U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {12U, 0U};
static unsigned int ng9[] = {0U, 0U};
static int ng10[] = {0, 0};
static const char *ng11 = "An unrecoverable System Error has Occured.";



static void Always_32_0(char *t0)
{
    char t4[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    int t15;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 12);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 12);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 15U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 15U);
    t14 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t14, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 12);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 12);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 15U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 15U);

LAB6:    t6 = ((char*)((ng1)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t6, 4);
    if (t15 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t15 = xsi_vlog_unsigned_case_compare(t4, 4, t2, 4);
    if (t15 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(52, ng0);

LAB26:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(54, ng0);
    xsi_vlogfile_write(1, 0, 0, ng11, 1, t0);

LAB25:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB30;

LAB28:    if (*((unsigned int *)t2) == 0)
        goto LAB27;

LAB29:    t5 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t5) = 1;

LAB30:    t6 = (t16 + 4);
    t13 = *((unsigned int *)t6);
    t17 = (~(t13));
    t18 = *((unsigned int *)t16);
    t19 = (t18 & t17);
    t20 = (t19 != 0);
    if (t20 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB33:    goto LAB2;

LAB7:    xsi_set_current_line(36, ng0);
    t7 = ((char*)((ng2)));
    t14 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t14, t7, 0, 0, 1, 0LL);
    goto LAB25;

LAB9:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB11:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB13:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB15:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB17:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB19:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB21:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t3, 0, 0, 1, 0LL);
    goto LAB25;

LAB27:    *((unsigned int *)t16) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(58, ng0);

LAB34:    xsi_set_current_line(59, ng0);
    t7 = ((char*)((ng10)));
    t14 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t14, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(60, ng0);
    xsi_vlogfile_write(1, 0, 0, ng11, 1, t0);
    goto LAB33;

}


extern void work_m_00000000000057270529_3447903785_init()
{
	static char *pe[] = {(void *)Always_32_0};
	xsi_register_didat("work_m_00000000000057270529_3447903785", "isim/exception_handle_unit_tb_isim_beh.exe.sim/work/m_00000000000057270529_3447903785.didat");
	xsi_register_executes(pe);
}
