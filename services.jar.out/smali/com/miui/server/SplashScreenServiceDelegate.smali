.class public Lcom/miui/server/SplashScreenServiceDelegate;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_DELAY_TIME:J = 0x36ee80L

.field static final MSG_REBIND:I = 0x1

.field public static final SPLASHSCREEN_ACTIVITY:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashActivity"

.field public static final SPLASHSCREEN_CLASS:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashScreenService"

.field public static final SPLASHSCREEN_PACKAGE:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final TAG:Ljava/lang/String; = "SplashScreenServiceDelegate"


# instance fields
.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDelayTime:J

.field final mHandler:Landroid/os/Handler;

.field private mRebindCount:I

.field private mSeverity:I

.field private final mSplashScreenConnection:Landroid/content/ServiceConnection;

.field protected mSplashScreenService:Lcom/miui/server/ISplashScreenService;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    .line 35
    iput v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 36
    iput-wide v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 37
    iput v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    .line 70
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    .line 124
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 166
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$3;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$3;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/miui/server/SplashScreenServiceDelegate;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/miui/server/SplashScreenServiceDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 45
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-nez v2, :cond_0

    .line 47
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.systemAdSolution"

    const-string v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "splashscreen: can\'t bind to com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    .line 60
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "splashscreen service started"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "Can not start splash screen service! "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private calcDelayTime()J
    .locals 18

    .prologue
    .line 94
    const-wide/16 v10, 0x2710

    .line 95
    .local v10, "tenSeconds":J
    const-wide/32 v6, 0xea60

    .line 96
    .local v6, "minute":J
    const-wide/32 v4, 0x36ee80

    .line 97
    .local v4, "hour":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    sub-long v2, v12, v14

    .line 99
    .local v2, "aliveTime":J
    cmp-long v9, v2, v6

    if-gez v9, :cond_0

    .line 100
    const/4 v8, 0x1

    .line 106
    .local v8, "severity":I
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    if-ne v8, v9, :cond_4

    .line 107
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 117
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    int-to-long v0, v9

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 118
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/32 v14, 0x36ee80

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 119
    move-object/from16 v0, p0

    iput v8, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 120
    const-string v9, "SplashScreenServiceDelegate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restart service delay time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    return-wide v12

    .line 101
    .end local v8    # "severity":I
    :cond_0
    cmp-long v9, v2, v4

    if-gez v9, :cond_1

    .line 102
    const/4 v8, 0x2

    .restart local v8    # "severity":I
    goto :goto_0

    .line 104
    .end local v8    # "severity":I
    :cond_1
    const/4 v8, 0x3

    .restart local v8    # "severity":I
    goto :goto_0

    .line 109
    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    add-long/2addr v12, v10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 112
    :cond_3
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 115
    :cond_4
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1
.end method

.method private delayToRebindService()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 65
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    iget v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    .line 67
    const-string v1, "SplashScreenServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splashscreen service rebind count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->activityIdle(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "activityIdle failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "destroyActivity failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 133
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v2, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "finalIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v2, p1, p2}, Lcom/miui/server/ISplashScreenService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    .end local v1    # "finalIntent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 139
    .restart local v1    # "finalIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SplashScreenServiceDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request splash screen failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "finalIntent":Landroid/content/Intent;
    :cond_0
    move-object v1, p1

    .line 143
    goto :goto_0
.end method
