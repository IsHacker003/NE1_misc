.class public Lcom/android/settings/UserCredentialsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$Credential;,
        Lcom/android/settings/UserCredentialsSettings$ViewHolder;,
        Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;,
        Lcom/android/settings/UserCredentialsSettings$AliasLoader;,
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
    }
.end annotation


# static fields
.field private static final credentialViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 373
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    .line 375
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a00db    # @id/contents_userkey

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a00da    # @id/contents_usercrt

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a00d8    # @id/contents_cacrt

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method protected static getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .line 382
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 383
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 386
    :cond_0
    const p1, 0x7f0a0040    # @id/alias

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const p1, 0x7f0a029a    # @id/purpose

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 388
    const p3, 0x7f12041b    # @string/credential_for_vpn_and_apps 'Installed for VPN and apps'

    goto :goto_0

    .line 389
    :cond_1
    const p3, 0x7f12041c    # @string/credential_for_wifi 'Installed for Wi-Fi'

    .line 387
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 391
    const p1, 0x7f0a00d7    # @id/contents

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p4, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    if-eqz p4, :cond_4

    .line 393
    move p1, v0

    :goto_2
    sget-object p4, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p1, p4, :cond_4

    .line 394
    sget-object p4, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 395
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    nop

    .line 395
    move v1, v0

    goto :goto_3

    .line 396
    :cond_3
    nop

    .line 395
    move v1, p3

    :goto_3
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 399
    :cond_4
    return-object p2
.end method


# virtual methods
.method protected announceRemoval(Ljava/lang/String;)V
    .locals 4

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f120ede    # @string/user_credential_removed 'Removed credential: %s'

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UserCredentialsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 68
    const/16 v0, 0x11d

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/UserCredentialsSettings$Credential;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-static {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120ee0    # @string/user_credentials 'User credentials'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    .line 75
    return-void
.end method

.method protected refreshItems()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :cond_0
    return-void
.end method
