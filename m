Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F63F89ED06
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Apr 2024 10:02:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ruSuw-00072G-Lv;
	Wed, 10 Apr 2024 08:02:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sre@kernel.org>) id 1ruSuv-000729-Mu
 for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Apr 2024 08:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mwalyfXZbSEjqqLPsKlXVsF/2Zd7m9TlXOaqkay/QJc=; b=F6WEHWAF2F4v77QlTlWO3ZstZV
 pKv5TULZe6DPhuQER244CR6R5XUY+UtQrZiNm795aORrv/xwjyFym8JIiMzRIMOwRCMFANvbUyn6t
 kmsb3tGW1eq+HuQ9Al6IrMcY0TdPytYK0ul4f2PYgQzH2yQqJqt0DF51rDslr6d5iKL8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-Id:
 Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mwalyfXZbSEjqqLPsKlXVsF/2Zd7m9TlXOaqkay/QJc=; b=VRR4kaDcM5IgSgKgTF4C6uSbPV
 RVkJZRBaKNUnvOMeLS2d2Lj5kU2uEntT/t4az/KBxxhb6RWl5/LA/D6rTkj2FTgbTyaWDRv2vOyCG
 XhuMFk02PvDU5PRgezByjOYOMspE6fgpAKKyPxfmZZgGOW8iZLs0mLeMjOgZ0gEEV3UU=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruSuu-0001Qm-Nt for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Apr 2024 08:02:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 019B5CE2645;
 Wed, 10 Apr 2024 08:02:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EDFDC43390;
 Wed, 10 Apr 2024 08:02:36 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
 id 324081063262; Wed, 10 Apr 2024 10:02:32 +0200 (CEST)
To: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>
In-Reply-To: <20240403080702.3509288-1-arnd@kernel.org>
References: <20240403080702.3509288-1-arnd@kernel.org>
Message-Id: <171273615213.1094883.18382201508159771859.b4-ty@collabora.com>
Date: Wed, 10 Apr 2024 10:02:32 +0200
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 03 Apr 2024 10:06:18 +0200, Arnd Bergmann wrote: >
 From: Arnd Bergmann <arnd@arndb.de> > > Compilers traditionally warn for
 unused 'static' variables, but not > if they are constant. The reaso [...]
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1ruSuu-0001Qm-Nt
Subject: Re: [Openipmi-developer] (subset) [PATCH 00/34] address all
 -Wunused-const warnings
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
From: Sebastian Reichel via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 dri-devel@lists.freedesktop.org,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-samsung-soc@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, linux-pm@vger.kernel.org,
 linux-sound@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 linux-omap@vger.kernel.org, Trond Myklebust <trond.myklebust@hammerspace.com>,
 Alex Elder <elder@kernel.org>, Tero Kristo <kristo@kernel.org>,
 Xiang Chen <chenxiang66@hisilicon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Iyappan Subramanian <iyappan@os.amperecomputing.com>,
 linux-crypto@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-trace-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Markuss Broks <markuss.broks@gmail.com>,
 Vaibhav Hiremath <hvaibhav.linux@gmail.com>, linux-i2c@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, Corey Minyard <minyard@acm.org>,
 Helge Deller <deller@gmx.de>, Lee Jones <lee@kernel.org>,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Len Brown <lenb@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Michael Hennerich <michael.hennerich@analog.com>, linux-kbuild@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, greybus-dev@lists.linaro.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Jarkko Sakkinen <jarkko@kernel.org>, Anna Schumaker <anna@kernel.org>,
 linux-integrity@vger.kernel.org, alsa-devel@alsa-project.org,
 Jonathan Cameron <jic23@kernel.org>, linux-efi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fpga@vger.kernel.org,
 linux-fbdev@vger.kernel.org, kasan-dev@googlegroups.com,
 Jiri Slaby <jirislaby@kernel.org>, linux-rtc@vger.kernel.org,
 Stanislaw Gruszka <stf_xl@wp.pl>, Masahiro Yamada <masahiroy@kernel.org>,
 linux-staging@lists.linux.dev, linux-input@vger.kernel.org,
 Jacky Huang <ychuang3@nuvoton.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jiri Kosina <jikos@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Steven Rostedt <rostedt@goodmis.org>,
 Nathan Chancellor <nathan@kernel.org>, Mark Brown <broonie@kernel.org>,
 Moritz Fischer <mdf@kernel.org>, openipmi-developer@lists.sourceforge.net,
 linux-nfs@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Sebastian Reichel <sre@kernel.org>, Peter Rosin <peda@axentia.se>,
 linux-stm32@st-md-mailman.stormreply.com, Tony Lindgren <tony@atomide.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-ide@vger.kernel.org,
 Peter Huewe <peterhuewe@gmx.de>, Ard Biesheuvel <ardb@kernel.org>,
 linux-leds@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-scsi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 John Allen <john.allen@amd.com>, netdev@vger.kernel.org,
 Bjorn Andersson <andersson@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Damien Le Moal <dlemoal@kernel.org>, dmaengine@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Wed, 03 Apr 2024 10:06:18 +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Compilers traditionally warn for unused 'static' variables, but not
> if they are constant. The reason here is a custom for C++ programmers
> to define named constants as 'static const' variables in header files
> instead of using macros or enums.
> 
> [...]

Applied, thanks!

[09/34] power: rt9455: hide unused rt9455_boost_voltage_values
        commit: 452d8950db3e839aba1bb13bc5378f4bac11fa04

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
