Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 603A4443424
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 17:57:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhx5y-0008QW-NY; Tue, 02 Nov 2021 16:57:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1mhx5x-0008QP-9M
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:57:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LGCQmymAm6UXef9vfVVFXNm6XKp96aKE1K6DMYjkXtk=; b=PLbxN/X7Xuchz0HO50PIUaL49q
 k/7DoKNMHU/EpHNSgJnQpWfzUm1+acW6dbQbkWmkk1kYK6AYBCef5xlHbCENfpdFPN/BJIhO6Qjs5
 wMp+2tWVnPkwOLqTD/Ku0b+rfEGYSO2EaZ/2bP2Ryn40VuTIrULsngfOD5iou6nXTync=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LGCQmymAm6UXef9vfVVFXNm6XKp96aKE1K6DMYjkXtk=; b=GgRTh3An0uykvm2NSVcpbXLGL3
 vHTT8NFXQDWYl9SDFlsMNpLeFaDUKIo7w5QLqpZUFJOv7NULLc700w9vduSI0YvhjrGPM3gyZupyM
 bfkRtJ2HZEwzR+q0omzlIEnH13Amp+E+Q8jx2Oa3kPOKsFoogTkzFA7Dizl7qIVZdn/M=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhx5w-00FBZe-4p
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 16:57:08 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231268812"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231268812"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:38:29 -0700
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="583667612"
Received: from nlibermx-mobl.amr.corp.intel.com (HELO [10.209.55.177])
 ([10.209.55.177])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:38:25 -0700
Message-ID: <3ad1f139-1951-b99e-3df0-4a34a2044809@linux.intel.com>
Date: Tue, 2 Nov 2021 09:38:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: minyard@acm.org, Joel Stanley <joel@jms.id.au>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <20211102122241.GK4667@minyard.net>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20211102122241.GK4667@minyard.net>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/2/2021 5:22 AM, Corey Minyard wrote: > On Mon, Nov 01, 
 2021 at 11:36:38PM +0000, Joel Stanley wrote: >> On Mon, 1 Nov 2021 at 23:18, 
 <jae.hyun.yoo@intel.com> wrote: >>> >>> From: Jae Hyun Yoo <j [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mhx5w-00FBZe-4p
Subject: Re: [Openipmi-developer] [PATCH -next 0/4] Add LCLK control into
 Aspeed LPC sub drivers
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Zev Weiss <zev@bewilderbeest.net>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>, Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 Cedric Le Goater <clg@kaod.org>, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/2/2021 5:22 AM, Corey Minyard wrote:
> On Mon, Nov 01, 2021 at 11:36:38PM +0000, Joel Stanley wrote:
>> On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>>
>>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>
>>> Hello all,
>>>
>>> This series is for appliying below fix to all Aspped LPC sub drivers.
>>> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>>>
>>> An LPC sub driver can be enabled without using the lpc-ctrl driver or it
>>> can be registered ahead of lpc-ctrl depends on each system configuration and
>>> this difference introduces that LPC can be enabled without heart beating of
>>> LCLK so it causes improper handling on host interrupts when the host sends
>>> interrupts in that time frame. Then kernel eventually forcibly disables the
>>> interrupt with dumping stack and printing a 'nobody cared this irq' message
>>> out.
>>>
>>> To prevent this issue, all LPC sub drivers should enable LCLK individually
>>> so this patch adds clock control logic into the remaining Aspeed LPC sub
>>> drivers.
>>
>> Thanks for sending this out!
>>
>> This will resolve a few of the issues we have in the issue tracker:
>>
>> https://github.com/openbmc/linux/issues/210
>> https://github.com/openbmc/linux/issues/130
>>
>> The patches look good to me. I think you've just missed Corey's PR for
>> v5.16, but I will stick them in the openbmc tree once they've had a
>> review.
> 
> We can still get them in to 5.16 if it's important for that; this is a
> bug fix, after all, and it's early.  I just need to know the urgency.
> 
> Get the Reviewed-by's in and add the bindings and I can get it into the
> next tree for a bit, then I can submit.  We may be in rc1 by then, but
> that's ok.

Thanks Corey! I'll submit v2 soon.

Jae

> 
> -corey
> 
>>
>> Cheers,
>>
>> Joel
>>
>>>
>>> Please review this series.
>>>
>>> Thanks,
>>> Jae
>>>
>>> Jae Hyun Yoo (4):
>>>    ARM: dts: aspeed: add LCLK setting into LPC IBT node
>>>    ipmi: bt: add clock control logic
>>>    ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
>>>    ipmi: kcs_bmc_aspeed: add clock control logic
>>>
>>>   arch/arm/boot/dts/aspeed-g4.dtsi   |  1 +
>>>   arch/arm/boot/dts/aspeed-g5.dtsi   |  5 +++++
>>>   arch/arm/boot/dts/aspeed-g6.dtsi   |  5 +++++
>>>   drivers/char/ipmi/bt-bmc.c         | 24 ++++++++++++++++++++++-
>>>   drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
>>>   5 files changed, 61 insertions(+), 5 deletions(-)
>>>
>>> --
>>> 2.25.1
>>>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
