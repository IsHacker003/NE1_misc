.class Lcom/android/settings/network/ApnSettings$3;
.super Landroid/app/ProgressDialog;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/ApnSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;Landroid/content/Context;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$3;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 729
    const/4 p1, 0x1

    return p1
.end method
