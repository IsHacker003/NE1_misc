.class public Lcust/settings/custRingtone/CustomRingtoneTabActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CustomRingtoneTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;
    }
.end annotation


# static fields
.field public static mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, -0x1

    sput v0, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->mType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    const-string v1, "ringtoneType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->mType:I

    .line 37
    const-string v0, "Andrea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomRingtoneSelectActivity - onCreate(), mType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 47
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 48
    const v3, 0x7f120643    # @string/fih_ringtone_tab_song 'Songs'

    invoke-virtual {p0, v3}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v3, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;

    const-string v4, "song"

    const-class v5, Lcust/settings/custRingtone/SongFragmentActivity$SongListFragment;

    invoke-direct {v3, p0, v4, v5}, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 51
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 52
    const v3, 0x7f120640    # @string/fih_ringtone_tab_artists 'Artists'

    invoke-virtual {p0, v3}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v3, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;

    const-string v4, "artists"

    const-class v5, Lcust/settings/custRingtone/ArtistFragmentActivity$ArtistListFragment;

    invoke-direct {v3, p0, v4, v5}, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 56
    const v3, 0x7f12063f    # @string/fih_ringtone_tab_albums 'Albums'

    invoke-virtual {p0, v3}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v3, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;

    const-string v4, "album"

    const-class v5, Lcust/settings/custRingtone/AlbumFragmentActivity$AlbumListFragment;

    invoke-direct {v3, p0, v4, v5}, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 59
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 60
    const v3, 0x7f120642    # @string/fih_ringtone_tab_genres 'Genres'

    invoke-virtual {p0, v3}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v3, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;

    const-string v4, "genres"

    const-class v5, Lcust/settings/custRingtone/GenresFragmentActivity$GenresListFragment;

    invoke-direct {v3, p0, v4, v5}, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 63
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 64
    const v3, 0x7f120641    # @string/fih_ringtone_tab_folder 'Folder'

    invoke-virtual {p0, v3}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v3, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;

    const-string v4, "folder"

    const-class v5, Lcust/settings/custRingtone/FolderFragmentActivity$FolderListFragment;

    invoke-direct {v3, p0, v4, v5}, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    const-string v2, "tab"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 89
    const-string v0, "Andrea"

    const-string v1, "CustomRingtoneSelectActivity - onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->finish()V

    .line 81
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    const-string v0, "tab"

    invoke-virtual {p0}, Lcust/settings/custRingtone/CustomRingtoneTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    return-void
.end method
