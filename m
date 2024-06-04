Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1827C8FB104
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Jun 2024 13:24:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sESHX-0004wE-V9;
	Tue, 04 Jun 2024 11:24:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chengzhihao1@huawei.com>) id 1sEJQa-0006Wf-JT
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 01:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4qK80qAVfwrrD+yNTASVNh77CgaL8hJrmMYWiIK9Z7U=; b=OFfqaDYDvoOxdClgfIEUuDmO6H
 ATZeGwS2Zaif/p75eGviH2n7b5Wy/sFnbIlt+7WvMzAkI3TYV6El+E+XyE2rjfnRrVTnjslApPpfD
 9NqspUV1GYpMGU/w1iuw28pgWQinydQUFgbq/WTSxeZ5nZQTLYuBP2ed9exBHb4z7c6A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4qK80qAVfwrrD+yNTASVNh77CgaL8hJrmMYWiIK9Z7U=; b=m2d3D2p7wUMS/hZWpbB1iKJFFN
 xdrwr6iztI2fyDyqGwmcMqzaoQcUrd5+fvJ52YnoE0tD6A2pbf5DkuOeGeeGrLF1NWW7zzwtntfE8
 mzmpvUFZCJ64ZZJAUyfYmRcL4LBvpZFNsIEpnnKtbyoa/qE7S+N6Yi9V14LF2VLUIScM=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sEJQZ-0007X7-8v for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Jun 2024 01:57:31 +0000
Received: from mail.maildlp.com (unknown [172.19.163.252])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4VtY6M5szWzwRV0;
 Tue,  4 Jun 2024 09:34:19 +0800 (CST)
Received: from kwepemm600013.china.huawei.com (unknown [7.193.23.68])
 by mail.maildlp.com (Postfix) with ESMTPS id 7C016180069;
 Tue,  4 Jun 2024 09:38:14 +0800 (CST)
Received: from [10.174.178.46] (10.174.178.46) by
 kwepemm600013.china.huawei.com (7.193.23.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 09:38:02 +0800
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, "Rafael J. Wysocki"
 <rafael.j.wysocki@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Corey Minyard <minyard@acm.org>, Allen Pais
 <apais@linux.microsoft.com>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Perry Yuan <perry.yuan@amd.com>, Giovanni
 Cabiddu <giovanni.cabiddu@intel.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Nuno Sa <nuno.sa@analog.com>, Guenter Roeck
 <linux@roeck-us.net>, Randy Dunlap <rdunlap@infradead.org>, Andi Shyti
 <andi.shyti@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, Lee Jones
 <lee@kernel.org>, Samuel Holland <samuel@sholland.org>, Elad Nachman
 <enachman@marvell.com>, Arseniy Krasnov <AVKrasnov@sberdevices.ru>, Johannes
 Berg <johannes.berg@intel.com>, Gregory Greenman
 <gregory.greenman@intel.com>, Benjamin Berg <benjamin.berg@intel.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Robert Richter <rrichter@amd.com>, Vinod Koul
 <vkoul@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Linus Walleij
 <linus.walleij@linaro.org>, Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=c3=a4rvinen?= <ilpo.jarvinen@linux.intel.com>, Nikita
 Kravets <teackot@gmail.com>, Jiri Slaby <jirislaby@kernel.org>, Srinivas
 Pandruvada <srinivas.pandruvada@linux.intel.com>, Stanley Chang
 <stanley_chang@realtek.com>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>, Abdel Alkuor <abdelalkuor@geotab.com>,
 Kent Overstreet <kent.overstreet@linux.dev>, Eric Biggers
 <ebiggers@google.com>, Kees Cook <keescook@chromium.org>, Ingo Molnar
 <mingo@kernel.org>, "Steven Rostedt (Google)" <rostedt@goodmis.org>, Daniel
 Bristot de Oliveira <bristot@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Hugh Dickins <hughd@google.com>, Abel Wu
 <wuyun.abel@bytedance.com>, John Johansen <john.johansen@canonical.com>, Mimi
 Zohar <zohar@linux.ibm.com>, Stefan Berger <stefanb@linux.ibm.com>, Roberto
 Sassu <roberto.sassu@huawei.com>, Eric Snowberg <eric.snowberg@oracle.com>,
 Takashi Iwai <tiwai@suse.de>, Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, Mark Brown
 <broonie@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 <linuxppc-dev@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <keyrings@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
 <linux-acpi@vger.kernel.org>, <linux-ide@vger.kernel.org>,
 <openipmi-developer@lists.sourceforge.net>, <linux-clk@vger.kernel.org>,
 <linux-rpi-kernel@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-tegra@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <qat-linux@intel.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <nouveau@lists.freedesktop.org>, <linux-hwmon@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <linux-leds@vger.kernel.org>,
 <linux-sunxi@lists.linux.dev>, <linux-omap@vger.kernel.org>,
 <linux-mmc@vger.kernel.org>, <linux-mtd@lists.infradead.org>,
 <netdev@vger.kernel.org>, <linux-wireless@vger.kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
 <linux-phy@lists.infradead.org>, <linux-gpio@vger.kernel.org>,
 <platform-driver-x86@vger.kernel.org>, <linux-staging@lists.linux.dev>,
 <linux-usb@vger.kernel.org>, <linux-fbdev@vger.kernel.org>,
 <linux-bcachefs@vger.kernel.org>, <linux-hardening@vger.kernel.org>,
 <cgroups@vger.kernel.org>, <linux-trace-kernel@vger.kernel.org>,
 <linux-mm@kvack.org>, <apparmor@lists.ubuntu.com>,
 <linux-security-module@vger.kernel.org>, <linux-integrity@vger.kernel.org>,
 <alsa-devel@alsa-project.org>, <linux-sound@vger.kernel.org>
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
Message-ID: <a6cff4d3-821a-3723-b261-3699053b5a51@huawei.com>
Date: Tue, 4 Jun 2024 09:37:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
X-Originating-IP: [10.174.178.46]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600013.china.huawei.com (7.193.23.68)
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ÔÚ 2024/6/2 23:57, Andy Shevchenko Ð´µÀ: > Make two APIs look
    similar. Hence convert match_string() to be > a 2-argument macro. In order
    to avoid unneeded churn, convert > all users as well. There is [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [45.249.212.187 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [45.249.212.187 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [45.249.212.187 listed in wl.mailspike.net]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1sEJQZ-0007X7-8v
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
From: Zhihao Cheng via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Zhihao Cheng <chengzhihao1@huawei.com>
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
 Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Scott Branden <sbranden@broadcom.com>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, "Gautham R.
 Shenoy" <gautham.shenoy@amd.com>, Tejun Heo <tj@kernel.org>,
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
 "Naveen
 N. Rao" <naveen.n.rao@linux.ibm.com>, Paolo Abeni <pabeni@redhat.com>,
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

1NogMjAyNC82LzIgMjM6NTcsIEFuZHkgU2hldmNoZW5rbyDQtLXAOgo+IE1ha2UgdHdvIEFQSXMg
bG9vayBzaW1pbGFyLiBIZW5jZSBjb252ZXJ0IG1hdGNoX3N0cmluZygpIHRvIGJlCj4gYSAyLWFy
Z3VtZW50IG1hY3JvLiBJbiBvcmRlciB0byBhdm9pZCB1bm5lZWRlZCBjaHVybiwgY29udmVydAo+
IGFsbCB1c2VycyBhcyB3ZWxsLiBUaGVyZSBpcyBubyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRlbmRl
ZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtv
QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAKPiBDb21waWxlIHRlc3RlZCB3aXRoIGBtYWtlIGFs
bHllc2NvbmZpZ2AgYW5kIGBtYWtlIGFsbG1vZGNvbmZpZ2AKPiBvbiB4ODZfNjQsIGFybSwgYWFy
Y2g2NCwgcG93ZXJwYzY0ICg4IGJ1aWxkcyB0b3RhbCkuCj4gCgpbLi4uXQo+IGRpZmYgLS1naXQg
YS9mcy91Ymlmcy9hdXRoLmMgYi9mcy91Ymlmcy9hdXRoLmMKPiBpbmRleCBhNGEwMTU4ZjcxMmQu
LmZjMGRhMThiZmE2NSAxMDA2NDQKPiAtLS0gYS9mcy91Ymlmcy9hdXRoLmMKPiArKysgYi9mcy91
Ymlmcy9hdXRoLmMKPiBAQCAtMjY0LDEzICsyNjQsMTMgQEAgaW50IHViaWZzX2luaXRfYXV0aGVu
dGljYXRpb24oc3RydWN0IHViaWZzX2luZm8gKmMpCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAg
CX0KPiAgIAo+IC0JYy0+YXV0aF9oYXNoX2FsZ28gPSBtYXRjaF9zdHJpbmcoaGFzaF9hbGdvX25h
bWUsIEhBU0hfQUxHT19fTEFTVCwKPiAtCQkJCQkgYy0+YXV0aF9oYXNoX25hbWUpOwo+IC0JaWYg
KChpbnQpYy0+YXV0aF9oYXNoX2FsZ28gPCAwKSB7Cj4gKwllcnIgPSBfX21hdGNoX3N0cmluZyho
YXNoX2FsZ29fbmFtZSwgSEFTSF9BTEdPX19MQVNULCBjLT5hdXRoX2hhc2hfbmFtZSk7Cj4gKwlp
ZiAoZXJyIDwgMCkgewo+ICAgCQl1Ymlmc19lcnIoYywgIlVua25vd24gaGFzaCBhbGdvICVzIHNw
ZWNpZmllZCIsCj4gICAJCQkgIGMtPmF1dGhfaGFzaF9uYW1lKTsKPiAtCQlyZXR1cm4gLUVJTlZB
TDsKPiArCQlyZXR1cm4gZXJyOwo+ICAgCX0KPiArCWMtPmF1dGhfaGFzaF9hbGdvID0gZXJyOwo+
ICAgCj4gICAJc25wcmludGYoaG1hY19uYW1lLCBDUllQVE9fTUFYX0FMR19OQU1FLCAiaG1hYygl
cykiLAo+ICAgCQkgYy0+YXV0aF9oYXNoX25hbWUpOwoKUmV2aWV3ZWQtYnk6IFpoaWhhbyBDaGVu
ZyA8Y2hlbmd6aGloYW8xQGh1YXdlaS5jb20+ICAjIGZzL3ViaWZzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
