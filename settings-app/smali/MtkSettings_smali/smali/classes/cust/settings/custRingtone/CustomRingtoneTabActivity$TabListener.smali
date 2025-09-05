.class public Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;
.super Ljava/lang/Object;
.source "CustomRingtoneTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/custRingtone/CustomRingtoneTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArgs:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    .line 111
    iput-object p2, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mTag:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mClass:Ljava/lang/Class;

    .line 113
    iput-object p4, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mArgs:Landroid/os/Bundle;

    .line 118
    const-string p1, "Andrea"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CustomRingtoneSelectActivity - TabListener(), mTag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iget-object p2, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    .line 120
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 123
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1

    .line 145
    const-string p1, "Andrea"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CustomRingtoneSelectActivity - onTabReselected(), mTag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    .line 128
    const-string p1, "Andrea"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomRingtoneSelectActivity - onTabSelected(), mTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mArgs:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    .line 131
    const p1, 0x1020002    # @android:id/content

    iget-object v0, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 135
    :goto_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    .line 138
    const-string p1, "Andrea"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomRingtoneSelectActivity - onTabUnselected(), mTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcust/settings/custRingtone/CustomRingtoneTabActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 142
    :cond_0
    return-void
.end method
