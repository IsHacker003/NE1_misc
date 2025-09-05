.class public Lcom/mediatek/settings/ext/DefaultSmsDialogExt;
.super Landroid/content/ContextWrapper;
.source "DefaultSmsDialogExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISmsDialogExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSmsDialogExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public buildMessage(Lcom/android/internal/app/AlertController$AlertParams;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    return-void
.end method

.method public onClick(Ljava/lang/String;Lcom/android/internal/app/AlertActivity;Landroid/content/Context;I)Z
    .locals 0

    .line 27
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/android/internal/app/AlertActivity;)Z
    .locals 0

    .line 31
    const/4 p1, 0x0

    return p1
.end method
