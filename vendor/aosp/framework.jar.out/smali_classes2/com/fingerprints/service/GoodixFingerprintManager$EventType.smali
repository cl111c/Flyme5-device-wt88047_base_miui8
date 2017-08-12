.class Lcom/fingerprints/service/GoodixFingerprintManager$EventType;
.super Ljava/lang/Object;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/GoodixFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventType"
.end annotation


# static fields
.field public static final EVENT_COMMON_BASE:I = 0x0

.field public static final EVENT_COMMON_NOTIFY_INFO:I = 0x7

.field public static final EVENT_COMMON_TOUCH:I = 0x1

.field public static final EVENT_COMMON_UNTOUCH:I = 0x2

.field public static final EVENT_DELETE_BASE:I = 0x1000

.field public static final EVENT_DELETE_NOEXIST:I = 0x1002

.field public static final EVENT_DELETE_SUCCESS:I = 0x1001

.field public static final EVENT_DELETE_TIMEOUT:I = 0x1003

.field public static final EVENT_ENROLL_BAD_IMAGE:I = 0x15

.field public static final EVENT_ENROLL_BASE:I = 0x10

.field public static final EVENT_ENROLL_CANCEL:I = 0x19

.field public static final EVENT_ENROLL_COMPLETE:I = 0x18

.field public static final EVENT_ENROLL_GET_DATA_FAILED:I = 0x16

.field public static final EVENT_ENROLL_LOW_COVER:I = 0x14

.field public static final EVENT_ENROLL_NO_EXTRAINFO:I = 0x13

.field public static final EVENT_ENROLL_NO_PIECE:I = 0x12

.field public static final EVENT_ENROLL_PIECE:I = 0x11

.field public static final EVENT_ENROLL_TIMEOUT:I = 0x17

.field public static final EVENT_VERIFY_BAD_IMAGE:I = 0x104

.field public static final EVENT_VERIFY_BASE:I = 0x100

.field public static final EVENT_VERIFY_FAILED:I = 0x103

.field public static final EVENT_VERIFY_GET_DATA_FAILED:I = 0x105

.field public static final EVENT_VERIFY_SUCCESS:I = 0x101

.field public static final EVENT_VERIFY_TIMEOUT:I = 0x102


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMsgInfo(I)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # I

    .prologue
    .line 557
    const-string v0, "unknown msg"

    .line 558
    .local v0, "info":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 632
    const-string v0, "unknow msg"

    .line 635
    :goto_0
    return-object v0

    .line 560
    :sswitch_0
    const-string v0, "EVENT_COMMON_BASE"

    .line 561
    goto :goto_0

    .line 563
    :sswitch_1
    const-string v0, "EVENT_COMMON_NOTIFY_INFO"

    .line 564
    goto :goto_0

    .line 566
    :sswitch_2
    const-string v0, "EVENT_COMMON_TOUCH"

    .line 567
    goto :goto_0

    .line 569
    :sswitch_3
    const-string v0, "EVENT_COMMON_UNTOUCH"

    .line 570
    goto :goto_0

    .line 572
    :sswitch_4
    const-string v0, "EVENT_DELETE_BASE"

    .line 573
    goto :goto_0

    .line 575
    :sswitch_5
    const-string v0, "EVENT_DELETE_NOEXIST"

    .line 576
    goto :goto_0

    .line 578
    :sswitch_6
    const-string v0, "EVENT_DELETE_SUCCESS"

    .line 579
    goto :goto_0

    .line 581
    :sswitch_7
    const-string v0, "EVENT_DELETE_TIMEOUT"

    .line 582
    goto :goto_0

    .line 584
    :sswitch_8
    const-string v0, "EVENT_VERIFY_BAD_IMAGE"

    .line 585
    goto :goto_0

    .line 587
    :sswitch_9
    const-string v0, "EVENT_VERIFY_BASE"

    .line 588
    goto :goto_0

    .line 590
    :sswitch_a
    const-string v0, "EVENT_VERIFY_FAILED"

    .line 591
    goto :goto_0

    .line 593
    :sswitch_b
    const-string v0, "EVENT_VERIFY_GET_DATA_FAILED"

    .line 594
    goto :goto_0

    .line 596
    :sswitch_c
    const-string v0, "EVENT_VERIFY_SUCCESS"

    .line 597
    goto :goto_0

    .line 599
    :sswitch_d
    const-string v0, "EVENT_VERIFY_TIMEOUT"

    .line 600
    goto :goto_0

    .line 602
    :sswitch_e
    const-string v0, "EVENT_ENROLL_BAD_IMAGE"

    .line 603
    goto :goto_0

    .line 605
    :sswitch_f
    const-string v0, "EVENT_ENROLL_BASE"

    .line 606
    goto :goto_0

    .line 608
    :sswitch_10
    const-string v0, "EVENT_ENROLL_CANCEL"

    .line 609
    goto :goto_0

    .line 611
    :sswitch_11
    const-string v0, "EVENT_ENROLL_COMPLETE"

    .line 612
    goto :goto_0

    .line 614
    :sswitch_12
    const-string v0, "EVENT_ENROLL_GET_DATA_FAILED"

    .line 615
    goto :goto_0

    .line 617
    :sswitch_13
    const-string v0, "EVENT_ENROLL_LOW_COVER"

    .line 618
    goto :goto_0

    .line 620
    :sswitch_14
    const-string v0, "EVENT_ENROLL_NO_EXTRAINFO"

    .line 621
    goto :goto_0

    .line 623
    :sswitch_15
    const-string v0, "EVENT_ENROLL_NO_PIECE"

    .line 624
    goto :goto_0

    .line 626
    :sswitch_16
    const-string v0, "EVENT_ENROLL_PIECE"

    .line 627
    goto :goto_0

    .line 629
    :sswitch_17
    const-string v0, "EVENT_ENROLL_TIMEOUT"

    .line 630
    goto :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x10 -> :sswitch_f
        0x11 -> :sswitch_16
        0x12 -> :sswitch_15
        0x13 -> :sswitch_14
        0x14 -> :sswitch_13
        0x15 -> :sswitch_e
        0x16 -> :sswitch_12
        0x17 -> :sswitch_17
        0x18 -> :sswitch_11
        0x19 -> :sswitch_10
        0x100 -> :sswitch_9
        0x101 -> :sswitch_c
        0x102 -> :sswitch_d
        0x103 -> :sswitch_a
        0x104 -> :sswitch_8
        0x105 -> :sswitch_b
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_6
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_7
    .end sparse-switch
.end method
