Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7436A959A40
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Aug 2024 13:38:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgjfQ-0008Nf-8w;
	Wed, 21 Aug 2024 11:38:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liuyuntao12@huawei.com>) id 1sg1Pp-0003Dq-Na
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 12:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A2AgnXtC21f0HwsYWnx9aiieygnwThjykDAd3S5ry4I=; b=BRsQIVzcmJVByBW+HFHMp47WCk
 gCvvjz+Lz1Ul1RDYfV1WC+v2QiZD503zibVQ7GJfMbsiHzx23u6cc2utp1qqxR09U7WeIVqYIhRmT
 DdB/2W8HARLOkPrseyg2zQ9ONyy/MPEVusimwawCr+6ewcrZHtEALoSPSRgSN52Eu6T0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A2AgnXtC21f0HwsYWnx9aiieygnwThjykDAd3S5ry4I=; b=H+IXAbTnyS5CslYn+b8mNPS5ze
 ugTbrA8rfXyrleADk4k69JI+eFVHMlt8bCuVBdR8810MNDV7Zb3JO2zwlN8KKhBYaDlxh+glmR7kz
 kAX0hcGQ2C+P5s36lts4XEKPnOWKprpt7mN0pmjkqV+vyNVmCtYsxcA1nosdZ9OXi33A=;
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg1Po-0001z5-NS for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 12:23:18 +0000
Received: from mail.maildlp.com (unknown [172.19.163.44])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4WnWsf0Zhzz1xvVw;
 Mon, 19 Aug 2024 20:21:10 +0800 (CST)
Received: from kwepemg500010.china.huawei.com (unknown [7.202.181.71])
 by mail.maildlp.com (Postfix) with ESMTPS id B32BC14011F;
 Mon, 19 Aug 2024 20:23:03 +0800 (CST)
Received: from [10.67.109.211] (10.67.109.211) by
 kwepemg500010.china.huawei.com (7.202.181.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 19 Aug 2024 20:23:02 +0800
Message-ID: <c1bc5137-9654-4434-a329-9381e14dffaf@huawei.com>
Date: Mon, 19 Aug 2024 20:23:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>, <openipmi-developer@lists.sourceforge.net>, 
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, "linux-edac@vger.kernel.org"
 <linux-edac@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
 <linux-usb@vger.kernel.org>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
 <dabde7bf-dcff-47c6-a68d-f5018ab00282@app.fastmail.com>
In-Reply-To: <dabde7bf-dcff-47c6-a68d-f5018ab00282@app.fastmail.com>
X-Originating-IP: [10.67.109.211]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemg500010.china.huawei.com (7.202.181.71)
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  yes sir^^. Regards! Yuntao On 2024/8/19 20:09, Arnd Bergmann
 wrote: > On Mon, Aug 19, 2024, at 13:38,
 Yuntao Liu wrote: >> Add MODULE_DEVICE_TABLE(), 
 so modules could be properly autoloaded >> based on the alias from platform_d
 [...] Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.32 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.32 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [45.249.212.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sg1Po-0001z5-NS
X-Mailman-Approved-At: Wed, 21 Aug 2024 11:38:10 +0000
Subject: Re: [Openipmi-developer] [PATCH -next 0/9] drivers: fix some module
 autoloading
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
From: "liuyuntao \(F\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "liuyuntao \(F\)" <liuyuntao12@huawei.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Ludovic.Desroches" <ludovic.desroches@microchip.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 codrin.ciubotariu@microchip.com,
 =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
 Robert Richter <rric@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Corey Minyard <minyard@acm.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Tony Luck <tony.luck@intel.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, morbidrsa@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, Vinod Koul <vkoul@kernel.org>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Daniel Mack <daniel@zonque.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

yes sir^^.

Regards!
Yuntao

On 2024/8/19 20:09, Arnd Bergmann wrote:
> On Mon, Aug 19, 2024, at 13:38, Yuntao Liu wrote:
>> Add MODULE_DEVICE_TABLE(), so modules could be properly autoloaded
>> based on the alias from platform_device_id table.
>>
>> Yuntao Liu (9):
>>    usb: ehci-mv: fix module autoloading
>>    soc: pxa: ssp: fix module autoloading
>>    misc: atmel-ssc: fix module autoloading
>>    i2c: at91: fix module autoloading
>>    mpc85xx_edac: fix module autoloading
>>    dmaengine: pxa: fix module autoloading
>>    dmaengine: mmp_pdma: fix module autoloading
>>    dmaengine: at_hdmac: fix module autoloading
>>    ipmi: ipmi_ssif: fix module autoloading
> 
> I looked at all the patches and found that most of them do not
> use the table any more, or will stop using it in the near future.
> 
> I think your work to validate the correctness of the entries
> is useful, but it may be more helpful to focus on removing
> all the unused tables, including those that have a
> MODULE_DEVICE_TABLE() tag.
> 
> If you are planning to do more such cleanups, maybe you can
> go through them one subsystem at a time and look for drivers
> that have both of_device_id and i2c_device_id/platform_device_id/
> spi_device_id tables. If nothing in the kernel creates a device
> with the legacy string, you can then send a patch that removes
> the old device ID list and at the same time makes the DT support
> unconditional in case there is an #ifdef CONFIG_OF check.
> 
> If the probe() function accesses platform_data, this would also
> be unused, allowing an even nicer cleanup of removing the
> platofrm_data path in favor of OF properties.
> 
>        Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
