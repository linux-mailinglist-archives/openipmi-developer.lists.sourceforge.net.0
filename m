Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 500478FB105
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Jun 2024 13:24:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sESHY-0004wK-8B;
	Tue, 04 Jun 2024 11:24:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bristot@kernel.org>) id 1sENu6-0002tK-25
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 06:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c3lHWz8qaqj26YW4DyVPVvvHlsHK3v3/6Q9UoYbImDA=; b=mly73/4C6UBoBdfDTw2YzP8qEV
 kc3llJ6f49WLMFnhztqvWp8YcxBjpIbIN8cut8p7cRRMpeg1t48OZrGj0lm2Rtw708QVI4n0TJ0qw
 n34t8/ZKz2Cn8ICKsHJCa7BMJoX/ySgOFNNG1RpgE6bqVfJsMxPu0Vi1D0GIAwhokJ9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c3lHWz8qaqj26YW4DyVPVvvHlsHK3v3/6Q9UoYbImDA=; b=fkceSbX0ctMZZ61tNnXMa+KH//
 UEE//4wKZJeu5AtB/ykm3GClO2uLRhK0D/m0OPJX5dyqx2yTSzTuOlQF0Yi0zuMzPPOgm6fbvV0AD
 M0ULFrHJ539hLS8zzsp0vWiiLCjYo4D967kId//+mXOgvb/fDRCBDDUdZqk15Ce3xUo8=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sENu6-0001vD-BI for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 06:44:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 87C00CE0F1E;
 Tue,  4 Jun 2024 06:44:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDE40C2BBFC;
 Tue,  4 Jun 2024 06:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1717483444;
 bh=0b2B21EDLznmxz0+PWaGRMUp9XLDYqlFaMbkmYh70KU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=N3Bnsh4/tGU8oGO2cyjLj6gwijbDQqjQqTW5Tg/DmHdTVa26xfvhgUduiUEpWgRMJ
 jaeytFwbW0xoivR5RT/pTnNOSj5zJCz1gRI5uHTyT23hKQaEPMg6zYZNAYLSVrm+cF
 dgtT6Ckdr0n7pQPkMZfSOYfG4dbSrh4eCdGcQSZqGLBkhMtMzlutm6bOFIcoAV1FZe
 9+EEQixoc3BG4phFKrga/REGqRRoaGpUMtJZl8B1M8iUMVe2WYDBm1ZLCQyqhB9Aaq
 FIJcQ95prB9DQQ/heINrJ6uwiWuSaSLO60BeDil3P6g6e+XxFflXroV097o5ECrDeb
 TDd+kVE/p/o6g==
Message-ID: <0ea564fa-5405-444a-befb-ca4372817e33@kernel.org>
Date: Tue, 4 Jun 2024 08:42:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Corey Minyard <minyard@acm.org>, Allen Pais <apais@linux.microsoft.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Perry Yuan <perry.yuan@amd.com>,
 Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Nuno Sa <nuno.sa@analog.com>,
 Guenter Roeck <linux@roeck-us.net>, Randy Dunlap <rdunlap@infradead.org>,
 Andi Shyti <andi.shyti@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Lee Jones <lee@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Elad Nachman <enachman@marvell.com>,
 Arseniy Krasnov <AVKrasnov@sberdevices.ru>,
 Johannes Berg <johannes.berg@intel.com>,
 Gregory Greenman <gregory.greenman@intel.com>,
 Benjamin Berg <benjamin.berg@intel.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Robert Richter <rrichter@amd.com>,
 Vinod Koul <vkoul@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Hans de Goede
 <hdegoede@redhat.com>, =?UTF-8?Q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Nikita Kravets <teackot@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Stanley Chang <stanley_chang@realtek.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Abdel Alkuor <abdelalkuor@geotab.com>,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Eric Biggers <ebiggers@google.com>, Kees Cook <keescook@chromium.org>,
 Ingo Molnar <mingo@kernel.org>, "Steven Rostedt (Google)"
 <rostedt@goodmis.org>, Andrew Morton <akpm@linux-foundation.org>,
 Hugh Dickins <hughd@google.com>, Abel Wu <wuyun.abel@bytedance.com>,
 John Johansen <john.johansen@canonical.com>, Mimi Zohar
 <zohar@linux.ibm.com>, Stefan Berger <stefanb@linux.ibm.com>,
 Roberto Sassu <roberto.sassu@huawei.com>,
 Eric Snowberg <eric.snowberg@oracle.com>, Takashi Iwai <tiwai@suse.de>,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Mark Brown <broonie@kernel.org>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 keyrings@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-ide@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-clk@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-pm@vger.kernel.org, qat-linux@intel.com,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-hwmon@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-omap@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-mtd@lists.infradead.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-gpio@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-usb@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-bcachefs@vger.kernel.org,
 linux-hardening@vger.kernel.org, cgroups@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, linux-mm@kvack.org,
 apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org,
 linux-integrity@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US, pt-BR, it-IT
From: Daniel Bristot de Oliveira <bristot@kernel.org>
In-Reply-To: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/2/24 17:57,
 Andy Shevchenko wrote: > diff --git a/kernel/trace/trace_osnoise.c
 b/kernel/trace/trace_osnoise.c > index a8e28f9b9271..7bed499effd3 100644
 > --- a/kernel/trace/trace_osnoise.c > +++ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [145.40.73.55 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [145.40.73.55 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sENu6-0001vD-BI
X-Mailman-Approved-At: Tue, 04 Jun 2024 11:24:46 +0000
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
 Prashant Gaikwad <pgaikwad@nvidia.com>, Heiko Stuebner <heiko@sntech.de>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Jaroslav Kysela <perex@perex.cz>,
 Ben Segall <bsegall@google.com>, Pavel Machek <pavel@ucw.cz>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>, James Morris <jmorris@namei.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Danilo Krummrich <dakr@redhat.com>,
 Mel Gorman <mgorman@suse.de>, Jean Delvare <jdelvare@suse.com>,
 Potnuri Bharat Teja <bharat@chelsio.com>, Nicholas Piggin <npiggin@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Zhihao Cheng <chengzhihao1@huawei.com>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Scott Branden <sbranden@broadcom.com>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Tejun Heo <tj@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Lukasz Luba <lukasz.luba@arm.com>, Zefan Li <lizefan.x@bytedance.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Hu Ziji <huziji@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Oliver O'Halloran <oohall@gmail.com>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Valentin Schneider <vschneid@redhat.com>, Paul Moore <paul@paul-moore.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Len Brown <lenb@kernel.org>,
 Brian Foster <bfoster@redhat.com>, Maxime Ripard <mripard@kernel.org>,
 Jason Baron <jbaron@akamai.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 Miri Korenblit <miriam.rachel.korenblit@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Karol Herbst <kherbst@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Chen-Yu Tsai <wens@csie.org>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
 "Serge E. Hallyn" <serge@hallyn.com>, Lyude Paul <lyude@redhat.com>,
 Ray Jui <rjui@broadcom.com>, Damien Le Moal <dlemoal@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Sebastian Reichel <sre@kernel.org>, Daniel Scally <djrscally@gmail.com>,
 JC Kuo <jckuo@nvidia.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tony Lindgren <tony@atomide.com>, Takashi Iwai <tiwai@suse.com>,
 David Howells <dhowells@redhat.com>, Niklas Cassel <cassel@kernel.org>,
 Huang Rui <ray.huang@amd.com>, "H. Peter Anvin" <hpa@zytor.com>,
 David Airlie <airlied@gmail.com>, Jim Cromie <jim.cromie@gmail.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Kalle Valo <kvalo@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Helge Deller <deller@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 6/2/24 17:57, Andy Shevchenko wrote:
> diff --git a/kernel/trace/trace_osnoise.c b/kernel/trace/trace_osnoise.c
> index a8e28f9b9271..7bed499effd3 100644
> --- a/kernel/trace/trace_osnoise.c
> +++ b/kernel/trace/trace_osnoise.c
> @@ -2230,9 +2230,9 @@ static ssize_t osnoise_options_write(struct file *filp, const char __user *ubuf,
>  		enable = false;
>  	}
>  
> -	option = match_string(osnoise_options_str, OSN_MAX, option_str);
> +	option = match_string(osnoise_options_str, option_str);
>  	if (option < 0)
> -		return -EINVAL;
> +		return option;
>  
>  	/*
>  	 * trace_types_lock is taken to avoid concurrency on start/stop.

Acked-by: Daniel Bristot de Oliveira <bristot@kernel.org>

Thanks!
-- Daniel


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
