Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D375B8FB78A
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Jun 2024 17:36:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sEWDN-0002QJ-6L;
	Tue, 04 Jun 2024 15:36:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andi.shyti@kernel.org>) id 1sEUQ0-0002QS-Bx
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 13:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NLx9D3E/f7ZlDsKhaFbep7Z/zSniFAeZ0uaVtAKC8Rs=; b=Jf872HHIhDV+2K1z1jsnJ2gXzQ
 yGl39YYfimRYI1ASwHaYbvfXwXf+06UM4f5pBrhUF/6qyY7sW/B+m40vHevzzM/uWXwsfKOAeD31c
 Cm315FTibiNIpXS/iaOfdB2bSx05vpWgV7jw9Eux6haaP9tLfAz/DTxjWz1/uFfaL8Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NLx9D3E/f7ZlDsKhaFbep7Z/zSniFAeZ0uaVtAKC8Rs=; b=T4hBbt6sfsVIW2vB8mxT1zvqXG
 M1RLREg2pz4zowHkdRdrYdKI1GXIfc5VLao2iihjZ3yx+/F/TLh6vcjFic/xKgEj/mIgLgUysRAa5
 r4nwKp0nJt+sNBvg2KqXF7a0Zo2mMGh0szbTNH/47ejpOhs0M6LiXnFuL37RLDqCaR/8=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sEUQ0-0008Op-5y for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 13:41:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 29380CE1160;
 Tue,  4 Jun 2024 13:41:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BE38C2BBFC;
 Tue,  4 Jun 2024 13:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1717508491;
 bh=FArcXwplL8wN1ALhCuGpUD+BoCuPOB8+aNe29ijJswU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bXYkUdIM5G5RAUoPD7MJYr//S1oqHl+LJ3fxfw7lfSFuBw8JhGTBW9PLufCUqHKjY
 OJVFk7K+rOrq9HuH76qkiJL0A/sTi2rTQodn+TKkQocB/tbQHZeZKu3m3G2lM5wcf0
 VD97GRCGMBes8MaOHcg8KM5fvFeye/FAQg9SKZN6tpIn5+9U5FE+VZJf0uRZu8AxbF
 xrs4Rlqn5YOUS7D0btNT9APFrOK0n1Q8HZ/ji58Sj2kGEhPit3yyT7IaR0HjrbKKbe
 82WAiCP1NrKaOO3384inkZ8fhbN5SYnrWSCyMgS7pEXOOMKSO77chS2wlgGdCmIr5c
 AAtt4MysOip3g==
Date: Tue, 4 Jun 2024 14:41:26 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <3ojs6btxgava4dcasys5tnrg5vsrqlshagcg7otvrdgfcwwje4@lcrd3r6gkfcs>
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Andy, On Sun, Jun 02, 2024 at 06:57:12PM +0300,
 Andy Shevchenko
 wrote: > Make two APIs look similar. Hence convert match_string() to be >
 a 2-argument macro. In order to avoid unneeded churn, convert > all [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [145.40.73.55 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sEUQ0-0008Op-5y
X-Mailman-Approved-At: Tue, 04 Jun 2024 15:36:43 +0000
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] treewide: Align
 match_string() with sysfs_match_string()
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Juri Lelli <juri.lelli@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Takashi Iwai <tiwai@suse.de>, Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Jaroslav Kysela <perex@perex.cz>, Ben Segall <bsegall@google.com>,
 Perry Yuan <perry.yuan@amd.com>, Prashant Gaikwad <pgaikwad@nvidia.com>,
 Pavel Machek <pavel@ucw.cz>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-clk@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Wu <wuyun.abel@bytedance.com>, linux-omap@vger.kernel.org,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Karol Herbst <kherbst@redhat.com>, Samuel Holland <samuel@sholland.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Tvrtko Ursulin <tursulin@ursulin.net>, linux-acpi@vger.kernel.org,
 Danilo Krummrich <dakr@redhat.com>, Mel Gorman <mgorman@suse.de>,
 linux-sunxi@lists.linux.dev, Guenter Roeck <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, linux-pm@vger.kernel.org,
 Potnuri Bharat Teja <bharat@chelsio.com>, James Morris <jmorris@namei.org>,
 linux-sound@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 platform-driver-x86@vger.kernel.org, Zhihao Cheng <chengzhihao1@huawei.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Niklas Cassel <cassel@kernel.org>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 "Gautham R. Shenoy" <gautham.shenoy@amd.com>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Elad Nachman <enachman@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-fbdev@vger.kernel.org,
 linux-usb@vger.kernel.org, Zefan Li <lizefan.x@bytedance.com>,
 nouveau@lists.freedesktop.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, Mimi Zohar <zohar@linux.ibm.com>,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>, Hu Ziji <huziji@marvell.com>,
 Eric Dumazet <edumazet@google.com>, keyrings@vger.kernel.org,
 Oliver O'Halloran <oohall@gmail.com>, linux-i2c@vger.kernel.org,
 Gregory Greenman <gregory.greenman@intel.com>, Ingo Molnar <mingo@kernel.org>,
 linux-security-module@vger.kernel.org,
 Valentin Schneider <vschneid@redhat.com>, Corey Minyard <minyard@acm.org>,
 Gregory Clement <gregory.clement@bootlin.com>, Lee Jones <lee@kernel.org>,
 Hugh Dickins <hughd@google.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, linux-trace-kernel@vger.kernel.org,
 Robert Richter <rrichter@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Brian Foster <bfoster@redhat.com>, Maxime Ripard <mripard@kernel.org>,
 linux-gpio@vger.kernel.org, Jason Baron <jbaron@akamai.com>,
 linux-rpi-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 cgroups@vger.kernel.org, Allen Pais <apais@linux.microsoft.com>,
 linux-arm-kernel@lists.infradead.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Roberto Sassu <roberto.sassu@huawei.com>, linux-integrity@vger.kernel.org,
 Daniel Bristot de Oliveira <bristot@redhat.com>, Len Brown <lenb@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Miri Korenblit <miriam.rachel.korenblit@intel.com>,
 Arseniy Krasnov <AVKrasnov@sberdevices.ru>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-pci@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, alsa-devel@alsa-project.org,
 Nuno Sa <nuno.sa@analog.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux-phy@lists.infradead.org, Jiri Slaby <jirislaby@kernel.org>,
 linux-staging@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Nikita Kravets <teackot@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Abdel Alkuor <abdelalkuor@geotab.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "Serge E. Hallyn" <serge@hallyn.com>,
 Lyude Paul <lyude@redhat.com>, Kees Cook <keescook@chromium.org>,
 Ray Jui <rjui@broadcom.com>, intel-gfx@lists.freedesktop.org,
 "Steven Rostedt \(Google\)" <rostedt@goodmis.org>,
 Johannes Berg <johannes.berg@intel.com>, Paul Moore <paul@paul-moore.com>,
 Mark Brown <broonie@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stanley Chang <stanley_chang@realtek.com>, Daniel Vetter <daniel@ffwll.ch>,
 openipmi-developer@lists.sourceforge.net, linux-hwmon@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, linux-mm@kvack.org,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-mmc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Daniel Scally <djrscally@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Eric Biggers <ebiggers@google.com>,
 Tony Lindgren <tony@atomide.com>, Takashi Iwai <tiwai@suse.com>,
 David Howells <dhowells@redhat.com>, linux-ide@vger.kernel.org,
 Huang Rui <ray.huang@amd.com>, "H. Peter Anvin" <hpa@zytor.com>,
 David Airlie <airlied@gmail.com>, Jim Cromie <jim.cromie@gmail.com>,
 linux-leds@vger.kernel.org, Eric Snowberg <eric.snowberg@oracle.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org, qat-linux@intel.com,
 linux-bcachefs@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Kalle Valo <kvalo@kernel.org>,
 apparmor@lists.ubuntu.com, Hans de Goede <hdegoede@redhat.com>,
 linux-mediatek@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 Benjamin Berg <benjamin.berg@intel.com>, linux-tegra@vger.kernel.org,
 intel-xe@lists.freedesktop.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 John Johansen <john.johansen@canonical.com>,
 Liam Girdwood <lgirdwood@gmail.com>, netdev@vger.kernel.org,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Adrian Hunter <adrian.hunter@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Damien Le Moal <dlemoal@kernel.org>,
 Daniel Bristot de Oliveira <bristot@kernel.org>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>,
 Stefan Berger <stefanb@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Andy,

On Sun, Jun 02, 2024 at 06:57:12PM +0300, Andy Shevchenko wrote:
> Make two APIs look similar. Hence convert match_string() to be
> a 2-argument macro. In order to avoid unneeded churn, convert
> all users as well. There is no functional change intended.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

nice patch, I checked some (maybe most) of your changes. There
are a few unrelated changes which I don't mind, but there are two
errors where the error value changes from ENODEV to EINVAL.

Find the comments through the line.

...

> diff --git a/drivers/cpufreq/amd-pstate.c b/drivers/cpufreq/amd-pstate.c
> index 1b7e82a0ad2e..b6f52f44625f 100644
> --- a/drivers/cpufreq/amd-pstate.c
> +++ b/drivers/cpufreq/amd-pstate.c
> @@ -1117,9 +1117,9 @@ static ssize_t store_energy_performance_preference(
>  	if (ret != 1)
>  		return -EINVAL;
>  
> -	ret = match_string(energy_perf_strings, -1, str_preference);
> +	ret = __match_string(energy_perf_strings, -1, str_preference);
>  	if (ret < 0)
> -		return -EINVAL;
> +		return ret;

a bit of unrelated changes here, but I guess no one will complain :-)

>  
>  	mutex_lock(&amd_pstate_limits_lock);
>  	ret = amd_pstate_set_energy_pref_index(cpudata, ret);

...

> diff --git a/drivers/mmc/host/sdhci-xenon-phy.c b/drivers/mmc/host/sdhci-xenon-phy.c
> index cc9d28b75eb9..1865e26ae736 100644
> --- a/drivers/mmc/host/sdhci-xenon-phy.c
> +++ b/drivers/mmc/host/sdhci-xenon-phy.c
> @@ -135,15 +135,14 @@ struct xenon_emmc_phy_regs {
>  	u32 logic_timing_val;
>  };
>  
> -static const char * const phy_types[] = {
> -	"emmc 5.0 phy",
> -	"emmc 5.1 phy"
> -};
> -
>  enum xenon_phy_type_enum {
>  	EMMC_5_0_PHY,
>  	EMMC_5_1_PHY,
> -	NR_PHY_TYPES
> +};
> +
> +static const char * const phy_types[] = {
> +	[EMMC_5_0_PHY] = "emmc 5.0 phy",
> +	[EMMC_5_1_PHY] = "emmc 5.1 phy",
>  };

Another unrelated cleanup, but I don't complain

>  enum soc_pad_ctrl_type {

...

> -	tablet_found = match_string(tablet_chassis_types,
> -				    ARRAY_SIZE(tablet_chassis_types),
> -				    chassis_type) >= 0;
> -	if (!tablet_found)
> -		return -ENODEV;
> +	ret = match_string(tablet_chassis_types, chassis_type);
> +	if (ret < 0)
> +		return ret;

This is a logical change though, because we are changing from
-ENODEV to -EINVAL. Even if it might look the right thing, but
still, it's a logical change.

>  
>  	ret = hp_wmi_perform_query(HPWMI_SYSTEM_DEVICE_MODE, HPWMI_READ,
>  				   system_device_mode, zero_if_sup(system_device_mode),
> @@ -490,9 +487,7 @@ static bool is_omen_thermal_profile(void)
>  	if (!board_name)
>  		return false;
>  
> -	return match_string(omen_thermal_profile_boards,
> -			    ARRAY_SIZE(omen_thermal_profile_boards),
> -			    board_name) >= 0;
> +	return match_string(omen_thermal_profile_boards, board_name) >= 0;
>  }
>  
>  static int omen_get_thermal_policy_version(void)

...

> diff --git a/drivers/thermal/intel/int340x_thermal/processor_thermal_rfim.c b/drivers/thermal/intel/int340x_thermal/processor_thermal_rfim.c
> index e56db75a94fb..dbd176b0fb1f 100644
> --- a/drivers/thermal/intel/int340x_thermal/processor_thermal_rfim.c
> +++ b/drivers/thermal/intel/int340x_thermal/processor_thermal_rfim.c
> @@ -111,7 +111,7 @@ static ssize_t suffix##_show(struct device *dev,\
>  		match_strs = (const char **)fivr_strings;\
>  		mmio_regs = tgl_fivr_mmio_regs;\
>  	} \
> -	ret = match_string(match_strs, -1, attr->attr.name);\
> +	ret = __match_string(match_strs, -1, attr->attr.name);\
>  	if (ret < 0)\
>  		return ret;\
>  	reg_val = readl((void __iomem *) (proc_priv->mmio_base + mmio_regs[ret].offset));\
> @@ -145,7 +145,7 @@ static ssize_t suffix##_store(struct device *dev,\
>  		mmio_regs = tgl_fivr_mmio_regs;\
>  	} \
>  	\
> -	ret = match_string(match_strs, -1, attr->attr.name);\
> +	ret = __match_string(match_strs, -1, attr->attr.name);\
>  	if (ret < 0)\
>  		return ret;\
>  	if (mmio_regs[ret].read_only)\
> diff --git a/drivers/thermal/intel/int340x_thermal/processor_thermal_wt_req.c b/drivers/thermal/intel/int340x_thermal/processor_thermal_wt_req.c
> index f298e7442662..57f456befb34 100644
> --- a/drivers/thermal/intel/int340x_thermal/processor_thermal_wt_req.c
> +++ b/drivers/thermal/intel/int340x_thermal/processor_thermal_wt_req.c
> @@ -50,7 +50,7 @@ static ssize_t workload_type_store(struct device *dev,
>  	if (ret != 1)
>  		return -EINVAL;
>  
> -	ret = match_string(workload_types, -1, str_preference);
> +	ret = __match_string(workload_types, -1, str_preference);

We could even thing of a "match_string_terminated" (or a better
name), but maybe it's too much?

>  	if (ret < 0)
>  		return ret;
>  

...

> -	c->auth_hash_algo = match_string(hash_algo_name, HASH_ALGO__LAST,
> -					 c->auth_hash_name);
> -	if ((int)c->auth_hash_algo < 0) {
> +	err = __match_string(hash_algo_name, HASH_ALGO__LAST, c->auth_hash_name);
> +	if (err < 0) {
>  		ubifs_err(c, "Unknown hash algo %s specified",
>  			  c->auth_hash_name);
> -		return -EINVAL;
> +		return err;

This is correct!

>  	}
> +	c->auth_hash_algo = err;
>  
>  	snprintf(hmac_name, CRYPTO_MAX_ALG_NAME, "hmac(%s)",
>  		 c->auth_hash_name);

...

> +int __match_string(const char * const *array, size_t n, const char *string);
> +
> +/**
> + * match_string - matches given string in an array
> + * @_a: array of strings
> + * @_s: string to match with
> + *
> + * Helper for __match_string(). Calculates the size of @a automatically.

/@a/@_a/

> + */
> +#define match_string(_a, _s) __match_string(_a, ARRAY_SIZE(_a), _s)
> +

...

> diff --git a/security/apparmor/lsm.c b/security/apparmor/lsm.c
> index 6239777090c4..e3fc94b4c7e5 100644
> --- a/security/apparmor/lsm.c
> +++ b/security/apparmor/lsm.c
> @@ -1820,9 +1820,9 @@ static int param_set_audit(const char *val, const struct kernel_param *kp)
>  	if (apparmor_initialized && !aa_current_policy_admin_capable(NULL))
>  		return -EPERM;
>  
> -	i = match_string(audit_mode_names, AUDIT_MAX_INDEX, val);
> +	i = __match_string(audit_mode_names, AUDIT_MAX_INDEX, val);

pity here... this could have been a match_string, but the
MAX_INDEX is hardcoded outside the enum.

>  	if (i < 0)
> -		return -EINVAL;
> +		return i;
>  
>  	aa_g_audit = i;
>  	return 0;

...

> diff --git a/sound/soc/soc-dapm.c b/sound/soc/soc-dapm.c
> index 16dad4a45443..7064f4cae549 100644
> --- a/sound/soc/soc-dapm.c
> +++ b/sound/soc/soc-dapm.c
> @@ -769,14 +769,13 @@ static int dapm_connect_mux(struct snd_soc_dapm_context *dapm,
>  		item = 0;
>  	}
>  
> -	i = match_string(e->texts, e->items, control_name);
> +	i = __match_string(e->texts, e->items, control_name);
>  	if (i < 0)
> -		return -ENODEV;
> +		return i;

Also this return value is wrong.

Andi

>  
>  	path->name = e->texts[i];
>  	path->connect = (i == item);
>  	return 0;
> -
>  }
>  
>  /* set up initial codec paths */
> -- 
> 2.43.0.rc1.1336.g36b5255a03ac
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
