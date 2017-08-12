.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field private static final NAME:Ljava/lang/String; = "fingerprint"

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    invoke-static {p1}, Landroid/app/fingerprint/FingerprintDelegate;->getFingerprintDelegate(Landroid/content/Context;)Landroid/app/fingerprint/FingerprintDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    .line 623
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/app/fingerprint/FingerprintDelegate;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object v0
.end method

.method private assignedFingerId()I
    .locals 6

    .prologue
    .line 597
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    invoke-virtual {v3}, Landroid/app/fingerprint/FingerprintDelegate;->getIds()[I

    move-result-object v1

    .line 598
    .local v1, "ids":[I
    new-instance v2, Ljava/util/Random;

    const-wide/16 v4, 0x64

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 599
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 600
    .local v0, "fingerId":I
    if-eqz v1, :cond_0

    .line 601
    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->isContainsFingerId(I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    .line 605
    :cond_0
    return v0
.end method

.method private isContainsFingerId(I[I)Z
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "fingerIds"    # [I

    .prologue
    .line 609
    array-length v1, p2

    .line 610
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 611
    aget v2, p2, v0

    if-ne p1, v2, :cond_0

    .line 612
    const/4 v2, 0x1

    .line 615
    :goto_1
    return v2

    .line 610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 401
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 402
    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 3
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    .prologue
    .line 410
    if-nez p4, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    if-eqz p2, :cond_2

    .line 415
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    const-string v0, "FingerprintManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 419
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 423
    :cond_2
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 424
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/app/fingerprint/FingerprintDelegate;->setCaptureCallback(Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;)V

    .line 439
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    invoke-virtual {v2}, Landroid/app/fingerprint/FingerprintDelegate;->getIds()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/fingerprint/FingerprintDelegate;->startIdentify(Landroid/app/fingerprint/FingerprintInterface$IdentifyCallback;[I)I

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 3
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .prologue
    .line 468
    if-nez p4, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    if-eqz p2, :cond_2

    .line 473
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const-string v0, "FingerprintManager"

    const-string v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return-void

    .line 477
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 481
    :cond_2
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 482
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager$3;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/app/fingerprint/FingerprintDelegate;->setCaptureCallback(Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;)V

    .line 497
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager$4;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->assignedFingerId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/fingerprint/FingerprintDelegate;->startEnrol(Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;I)I

    goto :goto_0
.end method

.method public getAuthenticatorId()J
    .locals 2

    .prologue
    .line 593
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    invoke-virtual {v0}, Landroid/app/fingerprint/FingerprintDelegate;->getIds()[I

    move-result-object v8

    .line 543
    .local v8, "ids":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v6, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v8, :cond_0

    .line 545
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_0

    .line 546
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    aget v3, v8, v7

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 549
    .end local v7    # "i":I
    :cond_0
    return-object v6
.end method

.method public hasEnrolledFingerprints()Z
    .locals 3

    .prologue
    .line 568
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    invoke-virtual {v2}, Landroid/app/fingerprint/FingerprintDelegate;->getIds()[I

    move-result-object v0

    .line 569
    .local v0, "ids":[I
    const/4 v1, 0x0

    .line 570
    .local v1, "length":I
    if-eqz v0, :cond_0

    .line 571
    array-length v1, v0

    .line 573
    :cond_0
    if-lez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isHardwareDetected()Z
    .locals 2

    .prologue
    .line 583
    const-string/jumbo v0, "ro.miui.support_fingerprint"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .prologue
    .line 522
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mFingerprintDelegate:Landroid/app/fingerprint/FingerprintDelegate;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/fingerprint/FingerprintDelegate;->deleteFingerData(I)I

    .line 523
    return-void
.end method

.method public rename(ILjava/lang/String;)V
    .locals 0
    .param p1, "fpId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 533
    return-void
.end method

.method public startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/service/fingerprint/FingerprintManagerReceiver;

    .prologue
    return-void
.end method
