.class public Lcom/android/settings/CustomListPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;,
        Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getConfirmationMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 69
    const/4 p1, 0x0

    return-object p1
.end method

.method protected isAutoClosePreference()Z
    .locals 1

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 51
    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 0

    .line 54
    return-void
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 48
    return-void
.end method
