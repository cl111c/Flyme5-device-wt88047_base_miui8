.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field private static final INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

.field private static final INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

.field static final RELEASE_TIME:Ljava/lang/String; = "release_time"

.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field static final SYSTEM_PROPERTIES_PERSIT_RELEASED:Ljava/lang/String; = "persist.sys.released"

.field private static TAG:Ljava/lang/String;

.field private static mPerfService:Lcom/android/internal/app/IPerfShielder;

.field private static mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

.field private static mSystemReady:Z

.field private static sAmInstance:Lcom/android/server/am/ActivityManagerService;

.field static final sHandler:Landroid/os/Handler;

.field static sHasMetReleaseTime:Z

.field private static sMainStack:Ljava/lang/reflect/Field;

.field static sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    const-class v1, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    .line 106
    :try_start_0
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mStackSupervisor"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 107
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 108
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyAllActivities"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    .line 110
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v1}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    .line 350
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq.activity.QQLSActivity"

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    .line 354
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    .line 564
    sput-boolean v6, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    .line 568
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.bench64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.videobench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark.GL2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.tester"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.full"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.music.videogame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmarkhd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.qihoo360.ludashi.cooling"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "cn.opda.android.activity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.shouji.cesupaofen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.colola.mobiletest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "ws.j7uxli.a6urcd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.gamebench.metricscollector"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.huahua.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.futuremark.dmandroid.application"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.eembc.coremark\u200b"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.rightware.BasemarkOSII"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.glbenchmark.glbenchmark27"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.greenecomputing.linpack"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.cfbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.quicinc.vellamo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.perfmon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.evozi.deviceid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.finalwire.aida64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.cpuid.cpu_z"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "rs.in.luka.android.pi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.uzywpq.cqlzahm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.xidige.androidinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    const-string v1, "persist.sys.released"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    .line 634
    sput-object v8, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-void

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "mMainStack"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    .line 116
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 117
    const-class v1, Lcom/android/server/am/ActivityManagerService;

    const-string v2, "scheduleDestroyActivities"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 119
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 121
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method

.method static activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 813
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 814
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,activityIdle failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    if-nez p0, :cond_2

    .line 818
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 821
    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_0

    .line 822
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method static addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "launchStartTime"    # J
    .param p4, "launchEndTime"    # J
    .param p6, "fromHome"    # Z

    .prologue
    .line 1039
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_0

    .line 1041
    :try_start_0
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IPerfShielder;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 167
    :cond_0
    return-void

    .line 149
    :cond_1
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 151
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "headIdx":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 157
    .local v6, "receiverSize":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .local v3, "name":Ljava/lang/String;
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 160
    .local v5, "r":Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 161
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 158
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "systemReady"    # Z

    .prologue
    const/4 v0, 0x1

    .line 531
    if-nez p2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 532
    :cond_1
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 533
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZ)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z

    .prologue
    .line 360
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 365
    if-nez p6, :cond_0

    .line 366
    const/4 v3, 0x1

    .line 421
    :goto_0
    return v3

    .line 370
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v3, v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v17

    .line 372
    .local v17, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 374
    .local v7, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-eqz v7, :cond_2

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v3, v1}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 375
    const/4 v3, 0x0

    goto :goto_0

    .line 372
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 374
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 378
    :cond_3
    const/16 v8, 0x8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p3

    move/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 379
    const/4 v3, 0x0

    goto :goto_0

    .line 382
    :cond_4
    if-eqz v7, :cond_7

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 383
    const-string v10, ""

    .line 384
    .local v10, "callerName":Ljava/lang/String;
    if-eqz p7, :cond_5

    .line 385
    move-object/from16 v10, p7

    .line 396
    :goto_3
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 397
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x2

    iget-object v13, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v15, v3

    move/from16 v12, p5

    invoke-virtual/range {v8 .. v15}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    .line 405
    const-string v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission denied by Whetstone, cannot start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 387
    :cond_5
    monitor-enter p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :try_start_1
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 389
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6

    .line 390
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 392
    :cond_6
    monitor-exit p1

    goto :goto_3

    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    .line 418
    .end local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v10    # "callerName":Ljava/lang/String;
    .end local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v3

    .line 421
    :cond_7
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 413
    .restart local v7    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v10    # "callerName":Ljava/lang/String;
    .restart local v17    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_8
    sget-boolean v3, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 414
    const-string v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZLjava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "userId"    # I
    .param p6, "systemReady"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 426
    if-nez p3, :cond_0

    const/4 v1, 0x1

    .line 472
    :goto_0
    return v1

    .line 427
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_2

    .line 428
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 427
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 430
    :cond_2
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-static {p0, v1, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 431
    const/4 v1, 0x0

    goto :goto_0

    .line 434
    :cond_3
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object v4, p4

    move-object v5, p3

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 435
    const/4 v1, 0x0

    goto :goto_0

    .line 438
    :cond_4
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 439
    const-string v3, ""

    .line 440
    .local v3, "callerName":Ljava/lang/String;
    monitor-enter p1

    .line 441
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 442
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_5

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    .line 443
    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 445
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 449
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v6, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v8, v5

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 457
    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied by Whetstone, cannot start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 445
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 465
    .restart local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_6
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 466
    const-string v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v3    # "callerName":Ljava/lang/String;
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Lcom/android/server/am/ContentProviderRecord;IZ)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "record"    # Lcom/android/server/am/ContentProviderRecord;
    .param p4, "userId"    # I
    .param p5, "systemReady"    # Z

    .prologue
    .line 477
    if-nez p5, :cond_0

    .line 478
    const/4 v1, 0x1

    .line 527
    :goto_0
    return v1

    .line 480
    :cond_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 481
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 484
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x4

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 488
    const/4 v1, 0x0

    goto :goto_0

    .line 491
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 492
    const-string v7, ""

    .line 494
    .local v7, "callerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    .line 495
    .local v13, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v13, :cond_4

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    .line 496
    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 500
    :cond_4
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 501
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v4, v12, v1

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 509
    const-string v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied by Whetstone, cannot start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 501
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 509
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 519
    :cond_7
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 520
    const-string v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_9

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", caller: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v7    # "callerName":Ljava/lang/String;
    .end local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 520
    .restart local v7    # "callerName":Ljava/lang/String;
    .restart local v13    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_9
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->shouldRestrictPkgBeforeRelease(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x0

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 19
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "ignoreTargetSecurity"    # Z

    .prologue
    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 231
    .local v16, "startTime":J
    if-eqz p1, :cond_0

    .line 232
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 233
    .local v4, "callingPid":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p2, v0

    .line 243
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 245
    .local v14, "origId":J
    :try_start_0
    const-string v2, "android.permission.START_ANY_ACTIVITY"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v13

    .line 246
    .local v13, "startAnyPerm":I
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object/from16 v2, p0

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 248
    .local v11, "componentPerm":I
    if-eqz v13, :cond_2

    if-eqz v11, :cond_2

    .line 249
    const/4 v2, 0x0

    .line 272
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    .end local v11    # "componentPerm":I
    .end local v13    # "startAnyPerm":I
    :goto_1
    return v2

    .line 235
    .end local v4    # "callingPid":I
    .end local v14    # "origId":J
    :cond_0
    if-ltz p2, :cond_1

    .line 236
    const/4 v4, -0x1

    .restart local v4    # "callingPid":I
    goto :goto_0

    .line 238
    .end local v4    # "callingPid":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 239
    .restart local v4    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 252
    .restart local v11    # "componentPerm":I
    .restart local v13    # "startAnyPerm":I
    .restart local v14    # "origId":J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v6, p5

    move/from16 v7, p2

    move v8, v4

    move-object/from16 v9, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 253
    const/4 v2, 0x0

    .line 272
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 256
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    .line 260
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v18

    .line 261
    .local v18, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 263
    const/4 v2, 0x0

    .line 272
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 265
    .end local v18    # "watchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 272
    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    const-string v2, "checkStartActivityLocked"

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 276
    const/4 v2, 0x1

    goto :goto_1

    .line 268
    .end local v11    # "componentPerm":I
    .end local v13    # "startAnyPerm":I
    :catch_1
    move-exception v12

    .line 269
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v3, "checkStartActivityLocked: An exception occured. "

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    const/4 v2, 0x0

    .line 272
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;)Landroid/content/Intent;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I
    .param p11, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p3, :cond_3

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v14, 0x0

    .line 193
    .local v14, "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v11, 0x0

    .line 194
    .local v11, "calleeAlreadyStarted":Z
    const/16 v16, 0x0

    .line 195
    .local v16, "havePermission":Z
    monitor-enter p1

    .line 196
    if-eqz p2, :cond_1

    .line 197
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 198
    if-nez v2, :cond_0

    .line 199
    monitor-exit p1

    move-object/from16 v17, p4

    .line 223
    .end local v2    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "calleeAlreadyStarted":Z
    .end local v14    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "havePermission":Z
    .end local p4    # "intent":Landroid/content/Intent;
    .local v17, "intent":Landroid/content/Intent;
    :goto_0
    return-object v17

    .line 201
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v2    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "calleeAlreadyStarted":Z
    .restart local v14    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "havePermission":Z
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :cond_1
    move-object/from16 v1, p1

    move/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    .line 204
    invoke-static/range {v1 .. v8}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v16

    .line 205
    if-eqz v16, :cond_2

    .line 207
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    const/4 v11, 0x1

    .line 211
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v16, :cond_3

    .line 214
    const-string v1, "security"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/SecurityManager;

    .line 215
    .local v3, "securityManager":Lmiui/security/SecurityManager;
    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 v6, p11

    move-object/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v15

    .line 218
    .local v15, "checkIntent":Landroid/content/Intent;
    if-eqz v15, :cond_3

    .line 219
    move-object/from16 p4, v15

    .end local v2    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "securityManager":Lmiui/security/SecurityManager;
    .end local v11    # "calleeAlreadyStarted":Z
    .end local v14    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "checkIntent":Landroid/content/Intent;
    .end local v16    # "havePermission":Z
    :cond_3
    move-object/from16 v17, p4

    .line 223
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 211
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v2    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "calleeAlreadyStarted":Z
    .restart local v14    # "callerAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "havePermission":Z
    .restart local p4    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static checkTime(JLjava/lang/String;)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    .line 923
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 924
    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 926
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    return-void
.end method

.method static checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z
    .locals 14
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "info"    # Landroid/content/pm/ComponentInfo;
    .param p5, "wakeType"    # I
    .param p6, "userId"    # I

    .prologue
    .line 861
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 862
    :cond_0
    const/4 v11, 0x1

    .line 919
    :goto_0
    return v11

    .line 865
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 866
    .local v12, "startTime":J
    const/4 v11, 0x1

    .line 867
    .local v11, "ret":Z
    const-string v5, ""

    .line 868
    .local v5, "callerPkg":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 869
    monitor-enter p0

    .line 870
    :try_start_0
    const-string v2, "checkWakePath: synchronized (ams)1"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 871
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 872
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v10, :cond_2

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_3

    .line 873
    :cond_2
    const/4 v11, 0x1

    monitor-exit p0

    goto :goto_0

    .line 877
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "ret":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 875
    .restart local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "ret":Z
    :cond_3
    :try_start_1
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 877
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :goto_1
    const/4 v9, -0x1

    .line 887
    .local v9, "calleeUid":I
    const-string v6, ""

    .line 888
    .local v6, "calleePkg":Ljava/lang/String;
    const-string v4, ""

    .line 889
    .local v4, "className":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 895
    :cond_4
    if-eqz p4, :cond_6

    .line 896
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_5

    .line 897
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 899
    :cond_5
    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 900
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 903
    :cond_6
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 904
    const/4 v11, 0x1

    goto :goto_0

    .line 879
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v6    # "calleePkg":Ljava/lang/String;
    .end local v9    # "calleeUid":I
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 880
    move-object/from16 v5, p2

    goto :goto_1

    .line 882
    :cond_8
    const-string v5, "android"

    goto :goto_1

    .line 907
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v6    # "calleePkg":Ljava/lang/String;
    .restart local v9    # "calleeUid":I
    :cond_9
    if-ltz v9, :cond_b

    .line 908
    monitor-enter p0

    .line 909
    :try_start_2
    const-string v2, "checkWakePath: checkWakePath: synchronized (ams)2"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    .line 911
    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {p0, v2, v9, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 912
    const/4 v11, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 914
    .end local v11    # "ret":Z
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v11    # "ret":Z
    :cond_a
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 917
    :cond_b
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v2

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v11, 0x1

    .line 918
    :goto_2
    const-string v2, "checkWakePath"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 917
    :cond_c
    const/4 v11, 0x0

    goto :goto_2
.end method

.method static destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 842
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 843
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,destroyActivity failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    if-nez p0, :cond_2

    .line 847
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_0

    .line 851
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate;->destroyActivity(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method private static ensureDeviceProvisioned(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 775
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 777
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.provision"

    const-string v4, "com.android.provision.activities.DefaultActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 780
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 781
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v4, "The device provisioned state is inconsistent,try to restore."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    invoke-virtual {v2, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 785
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 787
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 788
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 793
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method

.method public static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "security"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 173
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 174
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    iget-object p1, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    monitor-exit p0

    move-object v1, p1

    .line 181
    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local p1    # "token":Landroid/os/IBinder;
    .local v1, "token":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 179
    .end local v1    # "token":Ljava/lang/Object;
    .restart local v0    # "securityManager":Lmiui/security/SecurityManager;
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_0
    monitor-exit p0

    .end local v0    # "securityManager":Lmiui/security/SecurityManager;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object v1, p1

    .line 181
    .restart local v1    # "token":Ljava/lang/Object;
    goto :goto_0

    .line 179
    .end local v1    # "token":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 321
    new-instance v0, Lmiui/drm/DrmBroadcast;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    .line 322
    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .locals 0
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 946
    invoke-static {p0}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsUnmount(I)V

    .line 947
    return-void
.end method

.method private static getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 637
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    .line 638
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    .line 640
    :cond_0
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static getCurAdjByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 655
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 656
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 657
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 658
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 659
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    monitor-exit v3

    .line 662
    :goto_0
    return v2

    .line 661
    :cond_0
    monitor-exit v3

    .line 662
    const v2, 0x7fffffff

    goto :goto_0

    .line 661
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCurSchedGroupByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 677
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 678
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 679
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 680
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 681
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    monitor-exit v3

    .line 684
    :goto_0
    return v2

    .line 683
    :cond_0
    monitor-exit v3

    .line 684
    const/4 v2, -0x1

    goto :goto_0

    .line 683
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getCurrentUserId()I
    .locals 4

    .prologue
    .line 981
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 982
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: getCurrentUserId() from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 993
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUserIdLocked()I

    move-result v2

    return v2
.end method

.method public static getExecutingServicesSize(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 708
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 709
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 710
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 711
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 712
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    monitor-exit v3

    .line 715
    :goto_0
    return v2

    .line 714
    :cond_0
    monitor-exit v3

    .line 715
    const/4 v2, -0x1

    goto :goto_0

    .line 714
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getExtraInstallFlags(I)I
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "installFlags":I
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getCurSchedGroupByPid(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 691
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 693
    :cond_0
    return v0
.end method

.method public static getPackageNameByPid(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 644
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 645
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 646
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 647
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 648
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    monitor-exit v3

    .line 651
    :goto_0
    return-object v2

    .line 650
    :cond_0
    monitor-exit v3

    .line 651
    const/4 v2, 0x0

    goto :goto_0

    .line 650
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "pkgName":Ljava/lang/String;
    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_1

    .line 303
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    .end local p0    # "receiver":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 304
    .restart local p0    # "receiver":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 305
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 306
    .local v1, "rinfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    .line 307
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProcStateByPid(I)I
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 666
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 667
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 668
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 669
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 670
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    monitor-exit v3

    .line 673
    :goto_0
    return v2

    .line 672
    :cond_0
    monitor-exit v3

    .line 673
    const/4 v2, -0x1

    goto :goto_0

    .line 672
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 932
    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v1

    .line 933
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 934
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 935
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 937
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 941
    .end local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 939
    .restart local v0    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v1

    .line 942
    .end local v2    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v2

    .line 941
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getTopRunningActivityInfo()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 997
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    .line 998
    .local v3, "service":Lcom/android/server/am/ActivityManagerService;
    monitor-enter v3

    .line 999
    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1000
    .local v0, "activityStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 1001
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1002
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 1003
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1004
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "packageName"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v4, "token"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string v4, "userId"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    monitor-exit v3

    .line 1011
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v1

    .line 1010
    :cond_0
    monitor-exit v3

    goto :goto_0

    .end local v0    # "activityStack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 751
    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    invoke-static {}, Lcom/android/server/AssetAtlasService;->disable()V

    .line 754
    :cond_0
    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 755
    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I

    .prologue
    const/4 v5, 0x0

    .line 957
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 958
    .local v1, "userIdInt":Ljava/lang/Integer;
    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->needAirlockUser(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 959
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUserAirlock(I[I)V

    .line 960
    const-string v2, "ActivityManagerService"

    const-string v3, "setCurrentUser - needAirLockUser."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "second_user_id"

    const/16 v4, -0x2710

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 969
    .local v0, "privacyUserId":I
    const-string v2, "ActivityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privacyUserId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userIdOrig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldUserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    if-ne v0, p3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-nez p3, :cond_4

    if-ne p1, v0, :cond_4

    .line 972
    :cond_2
    const-string v2, "ActivityManagerService"

    const-string v3, "switch without lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_1
    return-void

    .line 962
    .end local v0    # "privacyUserId":I
    :cond_3
    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    .line 963
    invoke-static {p2}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceNeedsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    const/4 v2, 0x0

    invoke-static {p2, v2, v5}, Lmiui/securityspace/SecuritySpaceEcryptManager;->spaceEcryptfsMount(IILjava/lang/String;)I

    goto :goto_0

    .line 976
    .restart local v0    # "privacyUserId":I
    :cond_4
    invoke-virtual {p4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static hasForegroundActivities(I)Z
    .locals 4
    .param p0, "pid"    # I

    .prologue
    .line 697
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 698
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 699
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 700
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 701
    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    monitor-exit v3

    .line 704
    :goto_0
    return v2

    .line 703
    :cond_0
    monitor-exit v3

    .line 704
    const/4 v2, 0x0

    goto :goto_0

    .line 703
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 316
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 317
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 318
    return-void
.end method

.method static isAllowedStartActivity(Lcom/android/server/AppOpsService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "opsService"    # Lcom/android/server/AppOpsService;
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    const/4 v2, 0x1

    .line 1016
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return v2

    .line 1019
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1020
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_0

    .line 1023
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1024
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1027
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p4, v3, :cond_0

    .line 1030
    const/16 v3, 0x43

    invoke-virtual {p0, v3, p4, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1031
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- Permission Denied Activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tuid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isUserSwitchable(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 950
    const/16 v0, 0x63

    if-ne p0, v0, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 953
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static onSystemReady(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 758
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    .line 759
    new-instance v1, Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {v1, p0}, Lcom/miui/server/SplashScreenServiceDelegate;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    .line 760
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V

    .line 761
    const-string v1, "perfshielder"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    .line 763
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->ensureDeviceProvisioned(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v2, "ensureDeviceProvisioned occurs Exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 796
    sget-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 797
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready,request splash failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local p0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object p0

    .line 800
    .restart local p0    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 801
    :cond_1
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Intent or aInfo is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_2
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    if-eqz v0, :cond_3

    .line 805
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 807
    :cond_3
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string v1, "mSplashScreenServiceDelegate is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    .line 282
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 283
    const/4 v6, 0x0

    .line 284
    .local v6, "transform":Z
    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    :cond_0
    const/16 v0, 0x3e7

    if-ne p4, v0, :cond_1

    .line 289
    const/4 p4, 0x0

    .line 291
    :cond_1
    const/4 v6, 0x1

    .line 293
    :cond_2
    if-eqz v6, :cond_3

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 297
    .end local v6    # "transform":Z
    :cond_3
    return-object p0
.end method

.method static resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "userId"    # I

    .prologue
    .line 828
    if-eqz p1, :cond_0

    .line 829
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 830
    .local v6, "component":Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    const-string v0, "com.miui.systemAdSolution"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.systemAdSolution.splashscreen.SplashActivity"

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 838
    .end local v6    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object p0
.end method

.method public static scheduleDestroyActivities(IZLjava/lang/String;)V
    .locals 9
    .param p0, "pid"    # I
    .param p1, "oomAdj"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 734
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 735
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    .line 738
    :try_start_1
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 739
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    return-void

    .line 740
    :cond_1
    :try_start_3
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 741
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 747
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public static scheduleTrimMemory(II)V
    .locals 5
    .param p0, "pid"    # I
    .param p1, "level"    # I

    .prologue
    .line 719
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 720
    .local v0, "amService":Lcom/android/server/am/ActivityManagerService;
    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    .line 721
    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 722
    .local v2, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 724
    :try_start_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 730
    return-void

    .line 725
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 729
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private static shouldRestrictPkgBeforeRelease(Ljava/lang/String;)Z
    .locals 8
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 611
    sget-boolean v6, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    if-eqz v6, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v4

    .line 615
    :cond_1
    const-wide/16 v2, 0x0

    .line 616
    .local v2, "time":J
    const-string v6, "release_time"

    invoke-static {v6}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "releaseTime":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 623
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_2

    .line 624
    sget-object v6, Lcom/android/server/am/ExtraActivityManagerService;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 625
    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    sput-boolean v5, Lcom/android/server/am/ExtraActivityManagerService;->sHasMetReleaseTime:Z

    .line 629
    const-string v5, "persist.sys.released"

    const-string v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
