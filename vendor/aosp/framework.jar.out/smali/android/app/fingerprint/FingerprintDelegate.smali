.class public Landroid/app/fingerprint/FingerprintDelegate;
.super Ljava/lang/Object;
.source "FingerprintDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintDelegate"

.field private static mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;


# instance fields
.field private mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/app/fingerprint/FingerprintFPCImpl;

    invoke-direct {v0, p1}, Landroid/app/fingerprint/FingerprintFPCImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    .line 28
    return-void
.end method

.method public static declared-synchronized getFingerprintDelegate(Landroid/content/Context;)Landroid/app/fingerprint/FingerprintDelegate;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v1, Landroid/app/fingerprint/FingerprintDelegate;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 33
    :try_start_0
    const-string v0, "FingerprintDelegate"

    const-string v2, "context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/4 v0, 0x0

    .line 41
    :goto_0
    monitor-exit v1

    return-object v0

    .line 37
    :cond_0
    :try_start_1
    sget-object v0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Landroid/app/fingerprint/FingerprintDelegate;

    invoke-direct {v0, p0}, Landroid/app/fingerprint/FingerprintDelegate;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    .line 41
    :cond_1
    sget-object v0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelEnrol()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface;->cancelEnrol()V

    .line 50
    return-void
.end method

.method public cancelIdentify()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface;->cancelIdentify()V

    .line 66
    return-void
.end method

.method public deleteFingerData(I)I
    .locals 1
    .param p1, "fingerId"    # I

    .prologue
    .line 69
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1}, Landroid/app/fingerprint/FingerprintInterface;->deleteFingerData(I)I

    move-result v0

    return v0
.end method

.method public getIds()[I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface;->getIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getTemplateIds()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface;->getTemplateIds()[I

    move-result-object v0

    return-object v0
.end method

.method public runCheckerboardTest()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface;->runCheckerboardTest()I

    move-result v0

    return v0
.end method

.method public runSelfTest()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0}, Landroid/app/fingerprint/FingerprintInterface;->runSelfTest()I

    move-result v0

    return v0
.end method

.method public setCaptureCallback(Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;)V
    .locals 1
    .param p1, "captureCallback"    # Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1}, Landroid/app/fingerprint/FingerprintInterface;->setCaptureCallback(Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;)V

    .line 74
    return-void
.end method

.method public startEnrol(Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;I)I
    .locals 1
    .param p1, "enrolCallback"    # Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1, p2}, Landroid/app/fingerprint/FingerprintInterface;->startEnrol(Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;I)I

    move-result v0

    return v0
.end method

.method public startIdentify(Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;[I)I
    .locals 1
    .param p1, "identifyCallback"    # Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;
    .param p2, "ids"    # [I

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/fingerprint/FingerprintDelegate;->mFingerprintInterface:Landroid/app/fingerprint/FingerprintInterface;

    invoke-interface {v0, p1, p2}, Landroid/app/fingerprint/FingerprintInterface;->startIdentify(Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;[I)I

    move-result v0

    return v0
.end method
