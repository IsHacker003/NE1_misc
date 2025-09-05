.class public final Lcust/settings/custRingtone/FihRingtonePickerActivity;
.super Landroid/app/ListActivity;
.source "FihRingtonePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private mApType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCalendarDefaultRingtone:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mDefaultSettingUri:Landroid/net/Uri;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEmailDefaultRingtone:Ljava/lang/String;

.field private mExistingUri:Landroid/net/Uri;

.field private mExternalUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mIsSetAudioFocus:Z

.field private mIsTriggerBySetting:I

.field private mMmsDefaultRingtone:Ljava/lang/String;

.field private mNeedRefreshOnResume:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPreferenceKey:Ljava/lang/String;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mSim1DefaultRingtone:Ljava/lang/String;

.field private mSim2DefaultRingtone:Ljava/lang/String;

.field private mStaticItemCount:I

.field private mType:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSilentPos:I

    .line 75
    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 78
    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 81
    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSampleRingtonePos:I

    .line 93
    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mApType:I

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsTriggerBySetting:I

    .line 108
    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    .line 111
    iput-boolean v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mNeedRefreshOnResume:Z

    .line 121
    iput-boolean v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsSetAudioFocus:Z

    .line 130
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExternalUri:Landroid/net/Uri;

    .line 142
    new-instance v0, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity$1;-><init>(Lcust/settings/custRingtone/FihRingtonePickerActivity;)V

    iput-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcust/settings/custRingtone/FihRingtonePickerActivity;)Landroid/net/Uri;
    .locals 0

    .line 56
    iget-object p0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcust/settings/custRingtone/FihRingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->removeFromToneList(Landroid/net/Uri;)V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1

    .line 677
    const v0, 0x104105a

    invoke-direct {p0, p1, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result p1

    return p1
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1

    .line 681
    const v0, 0x104105f

    invoke-direct {p0, p1, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result p1

    return p1
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 3

    .line 667
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f3    # @layout/zzz_sound_cust_simple_list_item_single_choice 'res/layout/zzz_sound_cust_simple_list_item_single_choice.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 670
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 671
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 672
    iget p2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mStaticItemCount:I

    .line 673
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private canRemoveToneFromList(Ljava/lang/String;)Z
    .locals 6

    .line 522
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 534
    nop

    .line 535
    nop

    .line 536
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    nop

    .line 539
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultSettingUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultSettingUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    nop

    .line 542
    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/16 v4, 0x8

    iget v5, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-ne v4, v5, :cond_2

    .line 543
    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSim1DefaultRingtone:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSim1DefaultRingtone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 544
    nop

    .line 547
    move v0, v2

    :cond_2
    iget v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-ne v2, v4, :cond_3

    .line 548
    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSim2DefaultRingtone:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSim2DefaultRingtone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 549
    nop

    .line 552
    move v0, v2

    :cond_3
    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mMmsDefaultRingtone:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mMmsDefaultRingtone:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 553
    nop

    .line 555
    move v3, v2

    :cond_4
    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mEmailDefaultRingtone:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mEmailDefaultRingtone:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 556
    nop

    .line 558
    move v3, v2

    :cond_5
    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCalendarDefaultRingtone:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCalendarDefaultRingtone:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 559
    nop

    .line 560
    move v3, v2

    :cond_6
    const-string p1, "FihRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isTypeDefaultRingtone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; isAPDefaultRingtone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-nez v0, :cond_8

    if-eqz v3, :cond_7

    goto :goto_2

    .line 564
    :cond_7
    return v2

    .line 562
    :cond_8
    :goto_2
    return v1
.end method

.method private getListPosition(I)I
    .locals 1

    .line 824
    if-gez p1, :cond_0

    return p1

    .line 826
    :cond_0
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    return p1
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1

    .line 818
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mStaticItemCount:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private playRingtone(II)V
    .locals 2

    .line 695
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 696
    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSampleRingtonePos:I

    .line 697
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v0, p2

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 698
    return-void
.end method

.method private removeFromToneList(Landroid/net/Uri;)V
    .locals 5

    .line 570
    const-string v0, "FihRingtonePickerActivity"

    const-string v1, "+ removeFromToneList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-nez p1, :cond_0

    .line 572
    return-void

    .line 574
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->canRemoveToneFromList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    const-string p1, "FihRingtonePickerActivity"

    const-string v0, " the selected item is set as tone, cannot deleted."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 580
    :cond_1
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 591
    const-string v0, "is_ringtone"

    goto :goto_0

    .line 585
    :pswitch_0
    const-string v0, "is_notification"

    .line 586
    goto :goto_0

    .line 582
    :pswitch_1
    const-string v0, "is_ringtone"

    .line 583
    goto :goto_0

    .line 588
    :cond_2
    const-string v0, "is_alarm"

    .line 589
    nop

    .line 594
    :goto_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 596
    const-string v2, "FihRingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 599
    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    goto :goto_1

    .line 601
    :catch_0
    move-exception p1

    .line 602
    const-string p1, "FihRingtonePickerActivity"

    const-string v0, "  failed to remove song from list"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_1
    const-string p1, "FihRingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mClickedPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->resumeListItem()V

    .line 608
    const-string p1, "FihRingtonePickerActivity"

    const-string v0, "- removeFromToneList()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveAPSettingValue(Landroid/net/Uri;)V
    .locals 4

    .line 330
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mApType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 367
    :pswitch_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "calendar_notification"

    .line 368
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    .line 367
    :cond_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    goto/16 :goto_6

    .line 363
    :pswitch_1
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "email_notification"

    .line 364
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    .line 363
    :cond_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    goto/16 :goto_6

    .line 332
    :pswitch_2
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mPreferenceKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mPreferenceKey:Ljava/lang/String;

    const-string v2, "message_notification_sim2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mPreferenceKey:Ljava/lang/String;

    const-string v2, "pref_key_ringtone_sim2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "message_notification_sim2"

    .line 334
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 333
    :cond_3
    move-object v3, v1

    :goto_0
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 336
    :cond_4
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "message_notification"

    .line 337
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 336
    :cond_5
    move-object v3, v1

    :goto_1
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    :goto_2
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsTriggerBySetting:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 343
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mPreferenceKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mPreferenceKey:Ljava/lang/String;

    const-string v2, "message_notification_sim2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mPreferenceKey:Ljava/lang/String;

    const-string v2, "pref_key_ringtone_sim2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 344
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.fihtdc.Message.NotificationChanged.Sim2"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 346
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.fihtdc.Message.NotificationChanged"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    :goto_3
    nop

    .line 349
    if-eqz p1, :cond_8

    .line 350
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 352
    :cond_8
    nop

    .line 354
    :goto_4
    if-nez v1, :cond_9

    .line 355
    const-string p1, "ringUri"

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 357
    :cond_9
    const-string p1, "ringUri"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    :goto_5
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    const-string p1, "FihRingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAPSettingValue() - send com.fihtdc.Message.NotificationChanged to notify Mms - ringUri:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    nop

    .line 373
    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRingtone(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3

    .line 498
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 499
    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-ne v1, v2, :cond_0

    .line 500
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_0
    const/16 v1, 0x8

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-ne v1, v2, :cond_1

    .line 502
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-ne v1, v2, :cond_2

    .line 504
    const-string v1, "is_alarm"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_2
    const/4 v1, 0x2

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-ne v1, v2, :cond_3

    .line 506
    const-string v1, "is_notification"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 513
    iput-object p2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 517
    goto :goto_1

    .line 508
    :cond_3
    const-string p1, "FihRingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupport ringtone type =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    return-void

    .line 514
    :catch_0
    move-exception p1

    .line 516
    const-string p1, "FihRingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t set ringtone flag for uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_1
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 797
    :cond_0
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 801
    :cond_1
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 802
    iget-boolean v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsSetAudioFocus:Z

    if-eqz v0, :cond_2

    .line 803
    const-string v0, "FihRingtonePickerActivity"

    const-string v1, "stopAnyPlayingRingtone(), abandonAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 809
    :cond_2
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 810
    const-string v0, "ringtone_playback=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 812
    :cond_3
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 813
    const-string v0, "ringtone_playback=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 815
    :cond_4
    return-void
.end method

.method private updateDeleteMenuItem()V
    .locals 3

    .line 638
    const-string v0, "FihRingtonePickerActivity"

    const-string v1, "+ updateDeleteMenuItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExternalUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 642
    :cond_0
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mExistingUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExternalUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    const-string v0, "FihRingtonePickerActivity"

    const-string v2, " external audio file, enable delete item."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->canRemoveToneFromList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 651
    :cond_2
    const-string v0, "FihRingtonePickerActivity"

    const-string v2, " internal audio file, disable delete item."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 654
    :goto_0
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- updateDeleteMenuItem(), mExternalUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExternalUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 640
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 454
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 457
    if-nez p3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 458
    :goto_0
    if-eqz p1, :cond_2

    .line 459
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setRingtone(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 460
    const-string p2, "FihRingtonePickerActivity"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: RESULT_OK, so set to be ringtone! "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iput-boolean v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mNeedRefreshOnResume:Z

    .line 463
    :cond_2
    goto :goto_1

    .line 464
    :cond_3
    const-string p1, "FihRingtonePickerActivity"

    const-string p2, "onActivityResult: Cancel to choose more ringtones, so do nothing!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 379
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 381
    const-string p1, "FihRingtonePickerActivity"

    const-string v0, "   press ok button."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 383
    nop

    .line 385
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    .line 388
    :cond_0
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSilentPos:I

    if-ne v0, v1, :cond_1

    .line 390
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 395
    :goto_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    invoke-direct {p0, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->saveAPSettingValue(Landroid/net/Uri;)V

    .line 399
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 400
    goto :goto_1

    .line 402
    :cond_2
    const-string p1, "FihRingtonePickerActivity"

    const-string v0, "   press cancel button."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setResult(I)V

    .line 405
    :goto_1
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->finish()V

    .line 406
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 158
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    const v1, 0x7f0d01f1    # @layout/zzz_sound_cust_ringtone_picker 'res/layout/zzz_sound_cust_ringtone_picker.xml'

    invoke-virtual {p0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setContentView(I)V

    .line 165
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 169
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 176
    const-string v4, "preferenceKey"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mPreferenceKey:Ljava/lang/String;

    .line 178
    const-string v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasDefaultItem:Z

    .line 179
    const-string v4, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 181
    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 182
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 185
    :cond_0
    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 186
    const-string v5, "clicked_pos"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 189
    :cond_1
    const-string p1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasSilentItem:Z

    .line 194
    new-instance p1, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 198
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v5, "file"

    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 206
    iput-boolean v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsSetAudioFocus:Z

    .line 210
    const-string p1, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 212
    iget-object v5, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, p1}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 215
    const-string p1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    .line 216
    iget p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-eq p1, v4, :cond_2

    .line 217
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v5, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-virtual {p1, v5}, Landroid/media/RingtoneManager;->setType(I)V

    .line 220
    :cond_2
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {p1}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 223
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {p1}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setVolumeControlStream(I)V

    .line 226
    const-string p1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 227
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 230
    const-string p1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 231
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultSettingUri:Landroid/net/Uri;

    .line 232
    const-string p1, "fih.intent.extra.ringtone.AP_TYPE"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mApType:I

    .line 233
    const-string p1, "triggerBySetting"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsTriggerBySetting:I

    .line 236
    iget p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mApType:I

    if-nez p1, :cond_3

    iget p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsTriggerBySetting:I

    if-nez p1, :cond_3

    .line 237
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xfd772f

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, -0xfd8b4e

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "message_notification"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mMmsDefaultRingtone:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "email_notification"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mEmailDefaultRingtone:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "calendar_notification"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCalendarDefaultRingtone:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 250
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSim1DefaultRingtone:Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v4, 0x8

    invoke-static {p1, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 253
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_5
    iput-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSim2DefaultRingtone:Ljava/lang/String;

    .line 257
    const-string p1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 258
    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    new-instance p1, Landroid/widget/SimpleCursorAdapter;

    const v6, 0x7f0d01f3    # @layout/zzz_sound_cust_simple_list_item_single_choice 'res/layout/zzz_sound_cust_simple_list_item_single_choice.xml'

    iget-object v7, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const-string v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [I

    const v0, 0x1020014    # @android:id/text1

    aput v0, v9, v3

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 268
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setListViewData(Landroid/widget/ListView;)V

    .line 269
    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const v0, 0x7f0a02b7    # @id/ringtone_picker_empty

    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 271
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 272
    const-string p1, "FihRingtonePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate() - mClickedPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 275
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 277
    const p1, 0x7f0a023f    # @id/okButton

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mOkButton:Landroid/widget/Button;

    .line 278
    const p1, 0x7f0a009c    # @id/cancelButton

    invoke-virtual {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCancelButton:Landroid/widget/Button;

    .line 279
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 473
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 474
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 492
    const/4 p1, 0x0

    return-object p1

    .line 476
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12063b    # @string/fih_ringtone_remove_description 'Delete selected item from list?'

    .line 477
    invoke-virtual {p0, v0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x108009b    # @android:drawable/ic_dialog_info

    .line 478
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    new-instance v1, Lcust/settings/custRingtone/FihRingtonePickerActivity$3;

    invoke-direct {v1, p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity$3;-><init>(Lcust/settings/custRingtone/FihRingtonePickerActivity;)V

    .line 479
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    new-instance v1, Lcust/settings/custRingtone/FihRingtonePickerActivity$2;

    invoke-direct {v1, p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity$2;-><init>(Lcust/settings/custRingtone/FihRingtonePickerActivity;)V

    .line 484
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 490
    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 409
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 781
    const-string v0, "FihRingtonePickerActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 787
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 788
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 688
    const/16 p1, 0x12c

    invoke-direct {p0, p3, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->playRingtone(II)V

    .line 689
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .line 620
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 621
    const-string p1, "FihRingtonePickerActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+ onListItemClick(), position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iput p3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 626
    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->playRingtone(II)V

    .line 629
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-direct {p0, p3}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 630
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 631
    const-string p1, "FihRingtonePickerActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "- onListItemClick(), mClickedPos: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; mExistingUri is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :cond_0
    const-string p1, "FihRingtonePickerActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "- onListItemClick(), mClickedPos: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; mExistingUri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_0
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->updateDeleteMenuItem()V

    .line 635
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 692
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 437
    :pswitch_0
    const-string v0, "FihRingtonePickerActivity"

    const-string v2, "remove menu item is selected"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 441
    invoke-virtual {p0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->showDialog(I)V

    .line 442
    goto :goto_0

    .line 431
    :pswitch_1
    const-string v0, "FihRingtonePickerActivity"

    const-string v2, "add menu item is selected"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v2, "SETLECT_CUSTOM_RINGTONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    const-string v2, "ringtoneType"

    iget v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 435
    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->finish()V

    .line 449
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 773
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 774
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mNeedRefreshOnResume:Z

    .line 776
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 414
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 416
    const/4 v1, 0x1

    const v2, 0x7f12063a    # @string/fih_ringtone_remove 'Remove'

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 417
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f080132    # @drawable/ic_menu_delete 'res/drawable/ic_menu_delete.xml'

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 418
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 419
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->updateDeleteMenuItem()V

    .line 421
    const v1, 0x7f120636    # @string/fih_ringtone_add 'Add'

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 422
    const v1, 0x7f080131    # @drawable/ic_menu_add_white 'res/drawable/ic_menu_add_white.xml'

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 423
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 424
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 833
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 836
    const-string v0, "clicked_pos"

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 838
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->resetExistingUri()V

    .line 841
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->updateDeleteMenuItem()V

    .line 843
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 966
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 968
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume>>>: mNeedRefreshOnResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mNeedRefreshOnResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-boolean v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mNeedRefreshOnResume:Z

    if-nez v0, :cond_0

    .line 970
    return-void

    .line 972
    :cond_0
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume>>>: mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->resumeListItem()V

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mNeedRefreshOnResume:Z

    .line 975
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume<<<: set position to be checked: mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 613
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 614
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState: mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v0, "clicked_pos"

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 767
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 768
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 769
    return-void
.end method

.method resetExistingUri()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 848
    const-string v0, "FihRingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetExistingUri() - mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mExistingUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method resumeListItem()V
    .locals 6

    .line 853
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 854
    if-nez v0, :cond_0

    .line 855
    const-string v0, "FihRingtonePickerActivity"

    const-string v1, "resumeListItem: listview is null, return!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void

    .line 860
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 861
    nop

    .line 862
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1

    .line 864
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 865
    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getNewCursor()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 866
    check-cast v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 867
    const-string v1, "FihRingtonePickerActivity"

    const-string v2, "resumeListItem: notify adapter update listview with new cursor!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_1
    const-string v1, "FihRingtonePickerActivity"

    const-string v2, "resumeListItem: cursor adapter is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_0
    const-string v1, "FihRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeListItem: mClickedPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; mStaticItemCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mStaticItemCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; mExistingUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    const/4 v2, -0x1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 880
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 884
    :try_start_0
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/media/RingtoneManager;->getNewRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    goto :goto_1

    .line 886
    :catch_0
    move-exception v1

    .line 887
    const-string v1, "FihRingtonePickerActivity"

    const-string v3, "resumeListItem:CursorIndexOutOfBoundsException - 1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_1
    const-string v1, "FihRingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeListItem: get the position of uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    if-eq v2, v1, :cond_2

    goto :goto_2

    .line 897
    :cond_2
    const-string v1, "FihRingtonePickerActivity"

    const-string v3, "resumeListItem: get position is invalid!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v1, v3}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 904
    iput v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 913
    :cond_4
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-static {v1, v3}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 914
    const-string v3, "FihRingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    RingtoneManager.getDefaultRingtoneUri(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    if-ne v2, v1, :cond_9

    .line 922
    const-string v1, "FihRingtonePickerActivity"

    const-string v2, "resumeListItem: no ringtone checked, show default instead!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v1, "FihRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mHasDefaultItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasDefaultItem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mHasSilentItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasSilentItem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mExistingUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-boolean v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_6

    .line 925
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultSettingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getNewRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListPosition(I)I

    move-result v1

    .line 927
    const-string v2, "FihRingtonePickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    defaultPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-ltz v1, :cond_5

    .line 929
    iput v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    goto :goto_3

    .line 931
    :cond_5
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 932
    :goto_3
    goto/16 :goto_5

    .line 933
    :cond_6
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 936
    :try_start_1
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 937
    iget-boolean v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v1, :cond_7

    .line 938
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSilentPos:I

    iput v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    goto :goto_4

    .line 940
    :cond_7
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getNewRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 942
    const-string v1, "FihRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    reset mClickedPos as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v1, :cond_8

    .line 944
    const-string v1, "FihRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    reset mExistingUri as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 948
    :cond_8
    :goto_4
    goto :goto_5

    .line 946
    :catch_1
    move-exception v1

    .line 947
    const-string v1, "FihRingtonePickerActivity"

    const-string v2, "resumeListItem:CursorIndexOutOfBoundsException - 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_9
    :goto_5
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 956
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 958
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->resetExistingUri()V

    .line 960
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->updateDeleteMenuItem()V

    .line 961
    return-void
.end method

.method public run()V
    .locals 5

    .line 702
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSampleRingtonePos:I

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSilentPos:I

    if-ne v0, v1, :cond_0

    .line 704
    invoke-direct {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 707
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 716
    iput-object v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 720
    :cond_1
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v0, v2, :cond_4

    .line 721
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_2

    .line 722
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 728
    :cond_2
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 731
    :cond_3
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 739
    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    goto :goto_0

    .line 742
    :cond_4
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .line 745
    :goto_0
    if-eqz v0, :cond_8

    .line 747
    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 748
    iget-object v2, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v4, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 750
    iput-boolean v3, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mIsSetAudioFocus:Z

    .line 751
    const-string v1, "FihRingtonePickerActivity"

    const-string v2, " run(), requestAudioFocus()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_5
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    if-ne v1, v3, :cond_6

    .line 756
    const-string v1, "ringtone_playback=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 758
    :cond_6
    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 759
    const-string v1, "ringtone_playback=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 761
    :cond_7
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 763
    :cond_8
    return-void
.end method

.method setListViewData(Landroid/widget/ListView;)V
    .locals 3

    .line 287
    iget-boolean v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasDefaultItem:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 290
    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    if-ne v0, v1, :cond_0

    .line 293
    const-string v0, "FihRingtonePickerActivity"

    const-string v2, "onPrepareListView()-Clicked pos is -1, reset the position by mDefaultRingtonePos"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 300
    :cond_0
    iget-boolean v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSilentPos:I

    .line 304
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez p1, :cond_1

    .line 305
    iget p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mSilentPos:I

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 309
    :cond_1
    iget p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    if-ne p1, v1, :cond_4

    .line 312
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 313
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v0, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result p1

    invoke-direct {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListPosition(I)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    goto :goto_0

    .line 315
    :cond_2
    iget-boolean p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz p1, :cond_3

    .line 316
    iget p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mDefaultRingtonePos:I

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    goto :goto_0

    .line 318
    :cond_3
    iget-object p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 319
    invoke-virtual {p0}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mType:I

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 318
    invoke-virtual {p1, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result p1

    invoke-direct {p0, p1}, Lcust/settings/custRingtone/FihRingtonePickerActivity;->getListPosition(I)I

    move-result p1

    iput p1, p0, Lcust/settings/custRingtone/FihRingtonePickerActivity;->mClickedPos:I

    .line 325
    :cond_4
    :goto_0
    return-void
.end method
