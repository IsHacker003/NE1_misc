.class public Lcust/settings/custRingtone/SongFragmentActivity;
.super Landroid/app/Activity;
.source "SongFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;
    }
.end annotation


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcust/settings/custRingtone/SongFragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 53
    const v0, 0x1020002    # @android:id/content

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {v1}, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    :cond_0
    return-void
.end method
