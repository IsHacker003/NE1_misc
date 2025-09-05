.class Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneViewBinder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/datetime/ZonePicker$1;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/datetime/ZonePicker$TimeZoneViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 116
    check-cast p1, Landroid/widget/TextView;

    .line 117
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 p1, 0x1

    return p1
.end method
