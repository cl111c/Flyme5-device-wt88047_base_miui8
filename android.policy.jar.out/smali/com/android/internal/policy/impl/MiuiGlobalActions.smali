.class Lcom/android/internal/policy/impl/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;
    }
.end annotation


# static fields
.field private static final BOOT_ALARM_INTENT_SERVICE:Ljava/lang/String; = "com.miui.powercenter.provider.BootAlarmIntentService"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHUTDOWN_ALARM_SERVICE_NAME:Ljava/lang/String; = "com.android.deskclock.util.ShutdownAlarm"

.field private static final TAG:Ljava/lang/String; = "MiuiGlobalActions"


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/Binder;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private final mContext:Landroid/content/Context;

.field private final mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

.field private mRotation:I

.field private mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 320
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 330
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 360
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    new-instance v0, Lmiui/maml/ResourceManager;

    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    const-string v2, "/system/media/theme/default/powermenu"

    invoke-direct {v1, v2}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    .line 103
    new-instance v0, Lmiui/maml/ScreenElementRoot;

    new-instance v1, Lmiui/maml/ScreenContext;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v1, v2, v3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    invoke-direct {v0, v1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->load()Z

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->init()V

    .line 109
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MiuiGlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->sendAction(I)V

    return-void
.end method

.method static synthetic access$100()Landroid/os/IPowerManager;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MiuiGlobalActions;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lmiui/maml/ScreenElementRoot;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MiuiGlobalActions;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MiuiGlobalActions;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRotation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MiuiGlobalActions;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MiuiGlobalActions;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->updateVariables()V

    return-void
.end method

.method private static getPowerManager()Landroid/os/IPowerManager;
    .locals 1

    .prologue
    .line 142
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method private loadMamlView()Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;
    .locals 6

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1}, Lmiui/maml/data/Variables;->reset()V

    .line 153
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->updateVariables()V

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v1, v2, v3}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    .line 158
    .local v0, "retView":Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;
    return-object v0
.end method

.method private sendAction(I)V
    .locals 2
    .param p1, "toggleId"    # I

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method private updateVariables()V
    .locals 25

    .prologue
    .line 166
    const/4 v8, 0x0

    .line 167
    .local v8, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .line 168
    .local v15, "result":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 169
    .local v10, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .line 170
    .local v4, "airplane":Ljava/lang/String;
    const/4 v14, 0x0

    .line 172
    .local v14, "method":Ljava/lang/reflect/Method;
    :try_start_0
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    .line 173
    const-string v21, "android.provider.Settings$System"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 177
    :goto_0
    if-eqz v8, :cond_1

    .line 179
    const-string v21, "AIRPLANE_MODE_ON"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 180
    if-eqz v10, :cond_0

    .line 181
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 184
    :cond_0
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v5, v0, [Ljava/lang/Class;

    const/16 v21, 0x0

    const-string v22, "android.content.ContentResolver"

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    aput-object v22, v5, v21

    const/16 v21, 0x1

    const-string v22, "java.lang.String"

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    aput-object v22, v5, v21

    .line 185
    .local v5, "clazz":[Ljava/lang/Class;
    const-string v21, "getInt"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 186
    if-eqz v14, :cond_1

    .line 187
    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v4, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Integer;

    move-object v15, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    .line 204
    .end local v5    # "clazz":[Ljava/lang/Class;
    :cond_1
    :goto_1
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/4 v12, 0x1

    .line 205
    .local v12, "isAirplaneModeOn":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v20

    .line 206
    .local v20, "variables":Lmiui/maml/data/Variables;
    const-string v21, "airplane_mode"

    if-eqz v12, :cond_7

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 207
    const-string v21, "silent_mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 208
    const-string v21, "show_emergency"

    const-string v22, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 211
    const-string v21, "shutdown_info"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "security"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/security/SecurityManager;

    .line 213
    .local v16, "securityManager":Lmiui/security/SecurityManager;
    if-eqz v16, :cond_3

    .line 214
    const/4 v13, 0x1

    .line 215
    .local v13, "isShutDownAlarm":Z
    const-string v21, "com.android.deskclock.util.ShutdownAlarm"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v18

    .line 216
    .local v18, "time":J
    const-string v21, "com.miui.powercenter.provider.BootAlarmIntentService"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 217
    .local v6, "autoBootTime":J
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-eqz v21, :cond_2

    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_a

    const-wide/16 v22, 0x3c

    add-long v22, v22, v18

    cmp-long v21, v6, v22

    if-gez v21, :cond_a

    .line 218
    :cond_2
    move-wide/from16 v18, v6

    .line 219
    const/4 v13, 0x0

    .line 223
    :goto_6
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-lez v21, :cond_3

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    if-eqz v13, :cond_b

    const v21, 0x11070083

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 226
    .local v11, "format":Ljava/lang/String;
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v18

    const/16 v21, 0x1

    move-wide/from16 v0, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lmiui/date/DateUtils;->formatRelativeTime(JZ)Ljava/lang/String;

    move-result-object v17

    .line 227
    .local v17, "timeStr":Ljava/lang/String;
    const-string v21, "shutdown_info"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v17, v22, v23

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 230
    .end local v6    # "autoBootTime":J
    .end local v11    # "format":Ljava/lang/String;
    .end local v13    # "isShutDownAlarm":Z
    .end local v17    # "timeStr":Ljava/lang/String;
    .end local v18    # "time":J
    :cond_3
    return-void

    .line 175
    .end local v12    # "isAirplaneModeOn":Z
    .end local v16    # "securityManager":Lmiui/security/SecurityManager;
    .end local v20    # "variables":Lmiui/maml/data/Variables;
    :cond_4
    :try_start_1
    const-string v21, "android.provider.Settings$Global"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v8

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v9

    .line 192
    .local v9, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v9}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    .line 193
    .end local v9    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v9

    .line 194
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 195
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 196
    .local v9, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 197
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v9

    .line 198
    .local v9, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    .line 199
    .end local v9    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v9

    .line 200
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 201
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v9

    .line 202
    .local v9, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v9}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_1

    .line 204
    .end local v9    # "e":Ljava/lang/NoSuchFieldException;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 206
    .restart local v12    # "isAirplaneModeOn":Z
    .restart local v20    # "variables":Lmiui/maml/data/Variables;
    :cond_7
    const-wide/16 v22, 0x0

    goto/16 :goto_3

    .line 207
    :cond_8
    const-wide/16 v22, 0x0

    goto/16 :goto_4

    .line 208
    :cond_9
    const-wide/16 v22, 0x0

    goto/16 :goto_5

    .line 221
    .restart local v6    # "autoBootTime":J
    .restart local v13    # "isShutDownAlarm":Z
    .restart local v16    # "securityManager":Lmiui/security/SecurityManager;
    .restart local v18    # "time":J
    :cond_a
    const-wide/16 v22, 0x3c

    add-long v18, v18, v22

    goto/16 :goto_6

    .line 224
    :cond_b
    const v21, 0x11070082

    goto :goto_7
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 308
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->cleanUp(Z)V

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 10
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v1, -0x1

    .line 237
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 240
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRotation:I

    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->loadMamlView()Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    .line 243
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->setSystemUiVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v3, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 262
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v2, v9}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->setFocusableInTouchMode(Z)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->requestFocus()Z

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 266
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x1008004

    const/4 v5, 0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 274
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 275
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 277
    const-string v1, "MiuiGlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 279
    const v1, 0x110c0002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRoot:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/high16 v2, 0x10000

    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 297
    :catch_0
    move-exception v7

    .line 298
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method
