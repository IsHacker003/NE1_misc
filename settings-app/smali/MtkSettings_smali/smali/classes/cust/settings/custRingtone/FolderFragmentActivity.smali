.class public Lcust/settings/custRingtone/FolderFragmentActivity;
.super Landroid/app/Activity;
.source "FolderFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;
    }
.end annotation


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcust/settings/custRingtone/FolderFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 37
    const v0, 0x1020002    # @android:id/content

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;

    invoke-direct {v1}, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    :cond_0
    return-void
.end method
