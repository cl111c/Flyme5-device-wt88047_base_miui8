.class public abstract Lcom/fingerprints/service/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/service/FingerprintManager$HelperCallback;,
        Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;,
        Lcom/fingerprints/service/FingerprintManager$EnrolCallback;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRect;,
        Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;,
        Lcom/fingerprints/service/FingerprintManager$GuidedResult;,
        Lcom/fingerprints/service/FingerprintManager$GuidedMaskList;,
        Lcom/fingerprints/service/FingerprintManager$GuidedData;,
        Lcom/fingerprints/service/FingerprintManager$EventHandler;,
        Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;,
        Lcom/fingerprints/service/FingerprintManager$AlipayIdentifyCallback;,
        Lcom/fingerprints/service/FingerprintManager$IdentifyListener;,
        Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;,
        Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    }
.end annotation


# static fields
.field static final ARG_IDENTIFY_UPDATED:I = 0x1

.field public static final CAPTURE_FAILED_TOO_FAST:I = 0x1

.field static final FPC_GUIDE_DATA_INVALID:I = -0x80000000

.field static final FPC_GUIDE_DIRECTION_E:I = 0x7

.field static final FPC_GUIDE_DIRECTION_N:I = 0x5

.field static final FPC_GUIDE_DIRECTION_NA:I = 0x0

.field static final FPC_GUIDE_DIRECTION_NE:I = 0x6

.field static final FPC_GUIDE_DIRECTION_NW:I = 0x4

.field static final FPC_GUIDE_DIRECTION_S:I = 0x2

.field static final FPC_GUIDE_DIRECTION_SE:I = 0x3

.field static final FPC_GUIDE_DIRECTION_SW:I = 0x1

.field static final FPC_GUIDE_DIRECTION_W:I = 0x8

.field public static FPC_SERVICE_NAME:Ljava/lang/String; = null

.field public static GOODIX_SERVICE_NAME:Ljava/lang/String; = null

.field static final MSG_CAPTURE_FAILED:I = 0x13

.field static final MSG_ENROLMENT_DATA_IMAGE_QUALITY:I = 0xe

.field static final MSG_ENROLMENT_DATA_IMAGE_STITCHED:I = 0x12

.field static final MSG_ENROLMENT_DATA_IMMOBILE:I = 0xf

.field static final MSG_ENROLMENT_DATA_NEXT_DIRECTION:I = 0x10

.field static final MSG_ENROLMENT_DATA_PROGRESS:I = 0x11

.field static final MSG_ENROLMENT_DONE:I = 0x5

.field static final MSG_ENROLMENT_FAILED:I = 0x8

.field static final MSG_ENROLMENT_LAST_TOUCH:I = 0xb

.field static final MSG_ENROLMENT_MASK_LIST:I = 0xd

.field static final MSG_ENROLMENT_NEXT_TOUCH:I = 0xc

.field static final MSG_ENROLMENT_SEND_GUIDE_DATA:I = 0xa

.field static final MSG_ENROLMENT_TOUCHES_QUALITY:I = 0x9

.field static final MSG_ENROL_PROGRESS:I = 0x4

.field static final MSG_FINGER_PRESENT:I = 0x2

.field static final MSG_FINGER_UP:I = 0x3

.field static final MSG_IDENTIFY_MATCH:I = 0x6

.field static final MSG_IDENTIFY_MATCH_EXT:I = 0x33

.field static final MSG_IDENTIFY_NO_MATCH:I = 0x7

.field static final MSG_WAITING_FINGER:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mBundle:Landroid/os/Bundle;

.field private static mGuidedDataBundle:Landroid/os/Bundle;


# instance fields
.field private mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

.field mClient:Lcom/fingerprints/service/IFingerprintClient;

.field private mDeleteTemplateCallback:Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;

.field private mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

.field mEventHandler:Landroid/os/Handler;

.field private mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;

.field private mGuidedDataCallback:Lcom/fingerprints/service/FingerprintManager$GuidedDataCallback;

.field private mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mIdentifyListener:Lcom/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mReadyToStore:Z

.field private mService:Lcom/fingerprints/service/IFingerprintService;

.field private mUserdata:I

.field mzHanderThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "fingerprints_service"

    sput-object v0, Lcom/fingerprints/service/FingerprintManager;->FPC_SERVICE_NAME:Ljava/lang/String;

    .line 63
    const-string v0, "fm_fingerprint_service"

    sput-object v0, Lcom/fingerprints/service/FingerprintManager;->GOODIX_SERVICE_NAME:Ljava/lang/String;

    .line 64
    const-string v0, "FingerprintManager"

    sput-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method public static open()Lcom/fingerprints/service/FingerprintManager;
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "FingerprintManager"

    const-string v1, " open(), looper is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/os/Looper;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 326
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/os/Looper;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    .line 328
    :cond_0
    if-eqz p0, :cond_1

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->open(Landroid/os/Looper;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_1
    const-string v0, "FManager"

    const-string v1, " open(con), looper is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static open(Landroid/os/Looper;)Lcom/fingerprints/service/FingerprintManager;
    .locals 9
    .param p0, "loop"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x0

    .line 338
    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 339
    .local v3, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 341
    .local v1, "getService":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/fingerprints/service/FingerprintManager;->GOODIX_SERVICE_NAME:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 342
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 343
    sget-object v4, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    const-string v6, "found goodix java service, use Goodix"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v4, Lcom/fingerprints/service/GoodixFingerprintManager;

    invoke-direct {v4, v2, p0}, Lcom/fingerprints/service/GoodixFingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V

    .line 372
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    .end local v2    # "service":Landroid/os/IBinder;
    .end local v3    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 346
    .restart local v1    # "getService":Ljava/lang/reflect/Method;
    .restart local v2    # "service":Landroid/os/IBinder;
    .restart local v3    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v4, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    const-string v6, "found fpc java service, use fpc"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/fingerprints/service/FingerprintManager;->FPC_SERVICE_NAME:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "service":Landroid/os/IBinder;
    check-cast v2, Landroid/os/IBinder;

    .line 348
    .restart local v2    # "service":Landroid/os/IBinder;
    new-instance v4, Lcom/fingerprints/service/FpcFingerprintManager;

    invoke-direct {v4, v2, p0}, Lcom/fingerprints/service/FpcFingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 350
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    .end local v2    # "service":Landroid/os/IBinder;
    .end local v3    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v4, v5

    .line 352
    goto :goto_0

    .line 353
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move-object v4, v5

    .line 372
    goto :goto_0

    .line 356
    :catch_2
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 359
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 362
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 365
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 368
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract deleteFingerData(I)V
.end method

.method public abstract getIds()[I
.end method

.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract getTemplateIds()[I
.end method

.method public abstract release()V
.end method

.method public abstract setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V
.end method

.method public abstract setHelperCallback(Lcom/fingerprints/service/FingerprintManager$HelperCallback;)V
.end method

.method public abstract startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V
.end method

.method public abstract startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V
.end method

.method private constructor <init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method private PackGuidedData()V
    .locals 0

    .prologue
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/fingerprints/service/FingerprintManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$1100()Landroid/os/Bundle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$300(Lcom/fingerprints/service/FingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$400(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$402(Lcom/fingerprints/service/FingerprintManager;Lcom/fingerprints/service/FingerprintManager$EnrolCallback;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;
    .param p1, "x1"    # Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    .prologue
    return-object p1
.end method

.method static synthetic access$500(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$600(Lcom/fingerprints/service/FingerprintManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$602(Lcom/fingerprints/service/FingerprintManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;
    .param p1, "x1"    # Z

    .prologue
    return p1
.end method

.method static synthetic access$700(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    return-void
.end method

.method static synthetic access$800()Landroid/os/Bundle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$900(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/fingerprints/service/FingerprintManager;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public static notifyScreenOff()V
    .locals 0

    .prologue
    return-void
.end method

.method public static notifyScreenOn()V
    .locals 0

    .prologue
    return-void
.end method

.method public deleteFingerData(Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;[I)V
    .locals 0
    .param p1, "deleteTemplateCallback"    # Lcom/fingerprints/service/FingerprintManager$DeleteTemplateCallback;
    .param p2, "fingerIds"    # [I

    .prologue
    return-void
.end method

.method public isFingerEnable()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isSurpport()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public shouldRestartByScreenOn()V
    .locals 0

    .prologue
    return-void
.end method

.method public startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyListener;[III)V
    .locals 0
    .param p1, "identifyListener"    # Lcom/fingerprints/service/FingerprintManager$IdentifyListener;
    .param p2, "ids"    # [I
    .param p3, "timeout"    # I
    .param p4, "userdata"    # I

    .prologue
    return-void
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 1
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
