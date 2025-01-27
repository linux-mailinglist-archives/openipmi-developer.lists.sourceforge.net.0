Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6CEA1D6DD
	for <lists+openipmi-developer@lfdr.de>; Mon, 27 Jan 2025 14:33:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tcPEU-0001aM-LV;
	Mon, 27 Jan 2025 13:32:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@intel.com>) id 1tcPET-0001Zz-MR
 for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Jan 2025 13:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8zhSZmwclT1lFpSMh22BW/UMVkHqTlcnWx4Yhu83TkA=; b=lHyR9sd0BxBeEI/nB87Afg8wSL
 L2zT83yy8c9U/dKUNklBI1420q8YECi4J9P8Xo6TUin43j9sc1VZakj3i6zcbuwNLMG7ENkOiPvyO
 APIdSxOfH3c/tn75yh04AQvcxjWVtPHA8gT9LvQKQ0N4P/HifP1r5NszCZWUUL/F8gjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8zhSZmwclT1lFpSMh22BW/UMVkHqTlcnWx4Yhu83TkA=; b=R/EycJVdHJPlCyK6LHUbvFt96V
 kUJMycAeBVNapcN0j1RJmJjBMqYJsF3nBzdFeY5q27d4MUHqzRkfVAjD23vbIEwUOQTZjWpNvx63x
 L/wqMZbXFiwdLoV2eWALmddEoczRUPqa6GWSWt6QGYktp+7GCn1klkw+pb5rZENdFJoY=;
Received: from mgamail.intel.com ([198.175.65.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tcP7T-0007iR-80 for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Jan 2025 13:25:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737984339; x=1769520339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RjFj+btLOrA1I0c/0XDEPot6dd9rNyckywxmgkJzq3o=;
 b=MYtpikc+v5TIWLaHfnNr1YhaSZoBbcp045ZBRRtAGoX22MxD6mW9JJ/h
 x9wyYnPdKmsyLQvogXepMSOlsdhX1gMPBX0DzyDwOnLO/L+CG05/01ABu
 4DMWPrl5cw7XeaQuyaqcgr4AydhqAXKKrZ4SEEJoiP/UHs6II+2PUxli+
 KQ0YCeD0bDiuNWngEo1kKFsRpNavDYoElN38okulOhExSeKD6YCbz4Zao
 JhsJE9o+o5jpshuS3QjvpgFi5jMQCtRXqLgE35pm0TDHSHocgPY08fCCv
 sWNLuZdLhDZ+YoVaDSej6Amu88VnQStur+0MtWStVh+1HtrxuHLcuuxuB Q==;
X-CSE-ConnectionGUID: MQN4PPAeQoOZS0Mepk0eJQ==
X-CSE-MsgGUID: aCQQwqeeStqBwpR6eYdrRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="42105384"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="42105384"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 05:25:22 -0800
X-CSE-ConnectionGUID: oOw//HyuRH2sXbDiVD3/cA==
X-CSE-MsgGUID: F7vXYkyrSx2N1gt4t3xT9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="131730368"
Received: from smile.fi.intel.com ([10.237.72.58])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 05:25:02 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
 (envelope-from <andriy.shevchenko@intel.com>)
 id 1tcP6l-00000005jpm-3fIe; Mon, 27 Jan 2025 15:24:55 +0200
Date: Mon, 27 Jan 2025 15:24:55 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <Z5eJJ199QwL0HVJT@smile.fi.intel.com>
References: <20240403080702.3509288-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403080702.3509288-1-arnd@kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -3.8 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 03, 2024 at 10:06:18AM +0200,
 Arnd Bergmann wrote:
 > From: Arnd Bergmann <arnd@arndb.de> > > Compilers traditionally warn for
 unused 'static' variables, but not > if they are constant. The [...] 
 Content analysis details:   (-3.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.15 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [198.175.65.15 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.15 listed in list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tcP7T-0007iR-80
Subject: Re: [Openipmi-developer] [PATCH 00/34] address all -Wunused-const
 warnings
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
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
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

On Wed, Apr 03, 2024 at 10:06:18AM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Compilers traditionally warn for unused 'static' variables, but not
> if they are constant. The reason here is a custom for C++ programmers
> to define named constants as 'static const' variables in header files
> instead of using macros or enums.
> 
> In W=1 builds, we get warnings only static const variables in C
> files, but not in headers, which is a good compromise, but this still
> produces warning output in at least 30 files. These warnings are
> almost all harmless, but also trivial to fix, and there is no
> good reason to warn only about the non-const variables being unused.
> 
> I've gone through all the files that I found using randconfig and
> allmodconfig builds and created patches to avoid these warnings,
> with the goal of retaining a clean build once the option is enabled
> by default.
> 
> Unfortunately, there is one fairly large patch ("drivers: remove
> incorrect of_match_ptr/ACPI_PTR annotations") that touches
> 34 individual drivers that all need the same one-line change.
> If necessary, I can split it up by driver or by subsystem,
> but at least for reviewing I would keep it as one piece for
> the moment.
> 
> Please merge the individual patches through subsystem trees.
> I expect that some of these will have to go through multiple
> revisions before they are picked up, so anything that gets
> applied early saves me from resending.

Arnd, can you refresh this one? It seems some misses still...
I have got 3+ 0-day reports against one of the mux drivers.

https://lore.kernel.org/all/?q=adg792a.c

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
