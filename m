Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A98BB6A46BB
	for <lists+openipmi-developer@lfdr.de>; Mon, 27 Feb 2023 17:07:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pWg2G-00040O-QX;
	Mon, 27 Feb 2023 16:07:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1pWg2F-000408-GY
 for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 16:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1vz2UEdjmQXWhUlE3HWzfK6c4UyQl3yd4RAPwcSJ89A=; b=fCXCJToTECwHsHEg+Hs2px6jXJ
 4+AtcHssepQLoDxhJ8+COVXge22K67aaiUm28VL7cFGmf6jWzFoR6K4iBbk9C/N27c3hmPZRTmqa1
 YnoUOWrd9/pfJlZdNQg5UB++XJj2wGVOvTc7peHvolVCWq8daFmFljXW0jJDPwjdN1ds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1vz2UEdjmQXWhUlE3HWzfK6c4UyQl3yd4RAPwcSJ89A=; b=UDRc9sBhp1FJ9pHuiY9sDES7eq
 GMjWtXvKmwU0nm1cgG10JI3Rj4OixiKO+puBPam4jNEuvc2r8oso9Ticn4DLyY+gZuTMuLe91B2bj
 BogKw7ERMeMYaFD/9W41vUXKrPGXYqNb6lxOXWRiEVv9jfme62rZt4qxPVu8G25Eg8Xk=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pWg29-0001F7-Bz for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Feb 2023 16:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=1vz2UEdjmQXWhUlE3HWzfK6c4UyQl3yd4RAPwcSJ89A=; b=ZTBfsGzw1Zz25agNHtP5dojHJj
 SbvBw4DWjkluj57TGsurxGKn7gq5utVt4Xo3T87VCnghOCjxsyOzwSFD6p9BzQA8dzP6aFzroou/G
 joiJ2HyB6hVfZie38EcUmBZtP13momINHbb8XT2j4fAjqp3Qy2L7cV8ty1o0CBQL9ZEmrBFPas6B9
 hCyor6yF7a5nzuuNCJo+8LQbNEfALDGwi0FHT3YgblTzpvR0rVQfzjEzd6ZPJeDq7FdCg+eKyKAY4
 1TARqq1Vn1SRIuIhwDqKPV3mwmE+gt26RF978mC3zR66Misshi/Y8AiXx1BjQTKxkLcfITK3b0m8i
 s73G6E1w==;
Received: from [2601:1c2:980:9ec0::df2f]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pWg1q-00AItm-J2; Mon, 27 Feb 2023 16:07:06 +0000
Message-ID: <6a95a337-2972-427f-635d-5ef4e91a82fa@infradead.org>
Date: Mon, 27 Feb 2023 08:07:04 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Hans de Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org
References: <20230226053953.4681-1-rdunlap@infradead.org>
 <7dd27ec5-0619-128d-8407-6711a05ef271@redhat.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <7dd27ec5-0619-128d-8407-6711a05ef271@redhat.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/27/23 01:31, Hans de Goede wrote: > Hi Randy, > > On
 2/26/23 06:39, Randy Dunlap wrote: >> REGMAP is a hidden (not user visible)
 symbol. Users cannot set it >> directly thru "make *config", so dr [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pWg29-0001F7-Bz
Subject: Re: [Openipmi-developer] [PATCH 0/8] drivers: select REGMAP instead
 of depending on it
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Vadim Pasternak <vadimp@nvidia.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 platform-driver-x86@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 Oskar Senft <osk@google.com>, Bin Gao <bin.gao@intel.com>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Lee Jones <lee@kernel.org>, linux-serial@vger.kernel.org,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 linux-gpio@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 openipmi-developer@lists.sourceforge.net, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Riku Voipio <riku.voipio@linaro.org>, Michael Shych <michaelsh@nvidia.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Walle <michael@walle.cc>,
 Yegnesh S Iyer <yegnesh.s.iyer@intel.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 2/27/23 01:31, Hans de Goede wrote:
> Hi Randy,
> 
> On 2/26/23 06:39, Randy Dunlap wrote:
>> REGMAP is a hidden (not user visible) symbol. Users cannot set it
>> directly thru "make *config", so drivers should select it instead of
>> depending on it if they need it.
>>
>> Consistently using "select" or "depends on" can also help reduce
>> Kconfig circular dependency issues.
>>
>> REGMAP is selected 94 times and is depended on 11 times in
>> current linux-next. Eliminate the uses of "depends on" by
>> converting them to "select".
> 
> Thank you for your work on this. Mixing of depends on vs select
> is a real problem with many Kconfig symbols.
> 
>>  [PATCH 1/8] ipmi: ASPEED_BT_IPMI_BMC: select REGMAP_MMIO instead of depending on it
>>  [PATCH 2/8] clk: HI655X: select REGMAP instead of depending on it
>>  [PATCH 3/8] gpio: GPIO_REGMAP: select REGMAP instead of depending on it
>>  [PATCH 4/8] leds: TI_LMU_COMMON: select REGMAP instead of depending on it
>>  [PATCH 5/8] platform: mellanox: select REGMAP instead of depending on it
>>  [PATCH 6/8] platform: x86: MLX_PLATFORM: select REGMAP instead of depending on it
>>  [PATCH 7/8] thermal: intel: BXT_PMIC: select REGMAP instead of depending on it
>>  [PATCH 8/8] serial: 8250: ASPEED_VUART: select REGMAP instead of depending on it
> 
> For patch 5/8 and 6/8, do you want me to merge them through the pdx86
> (platform-drivers-x86) tree, or do you plan to merge this whole series
> in one go through some other tree?

Hi Hans,
Please merge them thru the pdx86 tree.

Thanks.

> If you plan to merge the whole series through some other tree,
> here is my acked by for doing so for 5/8 and 6/8:
> 
> Acked-by: Hans de Goede <hdegoede@redhat.com>
> 
> Regards,
> 
> Hans
> 
> 
> 
> 
>>
>> diffstat:
>>  drivers/char/ipmi/Kconfig         |    3 ++-
>>  drivers/clk/Kconfig               |    2 +-
>>  drivers/gpio/Kconfig              |    2 +-
>>  drivers/leds/Kconfig              |    2 +-
>>  drivers/platform/mellanox/Kconfig |    9 ++++-----
>>  drivers/platform/x86/Kconfig      |    3 ++-
>>  drivers/thermal/intel/Kconfig     |    3 ++-
>>  drivers/tty/serial/8250/Kconfig   |    3 ++-
>>  8 files changed, 15 insertions(+), 12 deletions(-)
>>
>> Cc: Andrew Jeffery <andrew@aj.id.au>
>> Cc: Corey Minyard <minyard@acm.org>
>> Cc: openipmi-developer@lists.sourceforge.net
>> Cc: Arnd Bergmann <arnd@arndb.de>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Cc: Riku Voipio <riku.voipio@linaro.org>
>> Cc: Stephen Boyd <sboyd@kernel.org>
>> Cc: Michael Turquette <mturquette@baylibre.com>
>> Cc: linux-clk@vger.kernel.org
>> Cc: Michael Walle <michael@walle.cc>
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
>> Cc: linux-gpio@vger.kernel.org
>> Cc: Dan Murphy <dmurphy@ti.com>
>> Cc: Pavel Machek <pavel@ucw.cz>
>> Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
>> Cc: Lee Jones <lee@kernel.org>
>> Cc: linux-leds@vger.kernel.org
>> Cc: Darren Hart <dvhart@infradead.org>
>> Cc: Hans de Goede <hdegoede@redhat.com>
>> Cc: Michael Shych <michaelsh@nvidia.com>
>> Cc: Mark Gross <markgross@kernel.org>
>> Cc: Vadim Pasternak <vadimp@nvidia.com>
>> Cc: platform-driver-x86@vger.kernel.org
>> Cc: Yegnesh S Iyer <yegnesh.s.iyer@intel.com>
>> Cc: Bin Gao <bin.gao@intel.com>
>> Cc: Zhang Rui <rui.zhang@intel.com>
>> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
>> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
>> Cc: Amit Kucheria <amitk@kernel.org>
>> Cc: linux-pm@vger.kernel.org
>> Cc: Oskar Senft <osk@google.com>
>> Cc: linux-serial@vger.kernel.org
>>
> 

-- 
~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
