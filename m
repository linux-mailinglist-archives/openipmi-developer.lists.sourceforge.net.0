Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 255898FB101
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Jun 2024 13:24:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sESHY-0004wp-RT;
	Tue, 04 Jun 2024 11:24:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vkoul@kernel.org>) id 1sEP1g-0006ox-I7
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 07:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xweqEy6fm5NSwUpKfUR69QZggFCARI4Ci+KE1Y9OcV0=; b=QMdiPLgAJAmA9mGnFS+FHWnkRM
 g0C1ijl8R7NamJlJLHWhRyugK4I3v3bR1/1SbqCeWxBBAbH/s5lNnXJQusqDic1Mv5uZ1ktFnOOzV
 /f/s7OUZJZP1671nURiYde8HTGOL56XITxXi52MHMHZ1ToGuIoWMFMksyrd1xFSpwzlM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xweqEy6fm5NSwUpKfUR69QZggFCARI4Ci+KE1Y9OcV0=; b=idGhBBzz5HM6Nh683hBQvCu+D5
 W9cTL9/G+szxm/UwOF1rat8tRkzR2Sg27nKnVAnCKpIywnsvbjaCdf4+Cz23pSXL3/4TR0fLPgI/d
 6RSKnlR7TY0b0yCawJSbdT+4LgDBwCnFEKGMZoll05/+4zwH1i6esi4+fbqmOPjeh8Uo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sEP1g-0004ZI-12 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 07:56:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E183D61214;
 Tue,  4 Jun 2024 07:56:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78922C4AF07;
 Tue,  4 Jun 2024 07:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1717487760;
 bh=4r1XIGiIBntxtYgSrLATGn9pzmPHWxwf8DOa6d4i2rM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cO0txN5xdNfslfvZE791uexfYpXbRpHRIJ4K3vX7xZgZGMu/BK5fgd4ZTgoFlDPBU
 FCYQx1I4EV5cBO9u0WdQi9XhBFx+P+Xq8cKra5KDDqFlhW9YxOLdsXaSPnapDHDXxZ
 Sn9bXHmXIw6RqiRT3LYxIGzGWvsK9ueuZJjpaN78aCTZ1FV/L1CyJdAP4ozvgA8WV5
 XnvR1z5+4GS1WJqZ/Mwr1fE6xGukYvnhwpjJH69wsci4jbJCOQq4hRQZWUpXOHR8Yf
 krQZ+u74+Go0mge+d7wlxJScR5Dthshf4fStEgV84j5/ECqRXSC1OdnOXqc3QHBAya
 v/ZuT/0z8+Cxg==
Date: Tue, 4 Jun 2024 13:25:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <Zl7IizU68VWtYHsV@matsya>
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 02-06-24, 18:57, Andy Shevchenko wrote: > Make two APIs
 look similar. Hence convert match_string() to be > a 2-argument macro. In
 order to avoid unneeded churn, convert > all users as well. There i [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sEP1g-0004ZI-12
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
 Valentin Schneider <vschneid@redhat.com>, Corey Minyard <minyard@acm.org>,
 Gregory Clement <gregory.clement@bootlin.com>, Lee Jones <lee@kernel.org>,
 Hugh Dickins <hughd@google.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, linux-trace-kernel@vger.kernel.org,
 Andi Shyti <andi.shyti@kernel.org>, Robert Richter <rrichter@amd.com>,
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
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
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
 Adrian Hunter <adrian.hunter@intel.com>, linux-security-module@vger.kernel.org,
 Damien Le Moal <dlemoal@kernel.org>,
 Daniel Bristot de Oliveira <bristot@kernel.org>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>,
 Stefan Berger <stefanb@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 02-06-24, 18:57, Andy Shevchenko wrote:
> Make two APIs look similar. Hence convert match_string() to be
> a 2-argument macro. In order to avoid unneeded churn, convert
> all users as well. There is no functional change intended.
> 

..

>  drivers/phy/mediatek/phy-mtk-tphy.c           |  8 ++---
>  drivers/phy/tegra/xusb.c                      |  4 +--

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
