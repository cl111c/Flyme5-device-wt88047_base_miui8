.class public final Lflyme/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static alarm_alert:I

.field public static calendar_sound:I

.field public static email_sound:I

.field public static loaderror:I

.field public static mms_sound:I

.field public static nodomain:I

.field public static notification_sound:I

.field public static ringtone:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9111
    const/high16 v0, 0x80000

    sput v0, Lflyme/R$raw;->alarm_alert:I

    .line 9112
    const v0, 0x80001

    sput v0, Lflyme/R$raw;->calendar_sound:I

    .line 9113
    const v0, 0x80002

    sput v0, Lflyme/R$raw;->email_sound:I

    .line 9114
    const v0, 0x80003

    sput v0, Lflyme/R$raw;->loaderror:I

    .line 9115
    const v0, 0x80004

    sput v0, Lflyme/R$raw;->mms_sound:I

    .line 9116
    const v0, 0x80005

    sput v0, Lflyme/R$raw;->nodomain:I

    .line 9117
    const v0, 0x80006

    sput v0, Lflyme/R$raw;->notification_sound:I

    .line 9118
    const v0, 0x80007

    sput v0, Lflyme/R$raw;->ringtone:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
