Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B91B444751
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 18:37:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1miKCd-0003Gv-JP; Wed, 03 Nov 2021 17:37:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1miKCb-0003Gp-Fc
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 17:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3nxuPy/6+aKqPrZKFqUFN5fg0w7l/+i45NnoF0L7UP8=; b=E6f/02a/3bdEtqgKirfzC9GFSz
 9Xvih46lM4MFOlpdKBXq9gWBlt8lJmzpAD/EWXulI748rsSZyVA2LkRGXyDrMyJY34FsCaKN+TBzL
 FKnYFCyQVV3VTnDqVYpdwaGXwc+sCs16wgAOVs+A3s94QjGqSp9+sNBZJmc/GilqAUic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3nxuPy/6+aKqPrZKFqUFN5fg0w7l/+i45NnoF0L7UP8=; b=FfXf9vXGSzFPc1ebSCvEKL5odi
 P5kBNLpO64LL5uBciy0jen3OFadgVHdU+KJyVhAUgvYgOuCKeIhNtmUmj1Moodm//IXzRiOuhGSDC
 6F7dnFw3H6rjXWjWMQXVKDYReU0olwDfgLIVR7pFvDgujXCqx88pAaZ2Pag+b+VBk9bc=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miKCW-0006l9-VG
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 17:37:32 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="211606482"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="211606482"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 10:27:03 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="501179871"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.212.171.79])
 ([10.212.171.79])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 10:27:02 -0700
Message-ID: <796e0c02-5bca-e8a9-a17f-898aafec237f@linux.intel.com>
Date: Wed, 3 Nov 2021 10:26:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
 <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/3/2021 9:29 AM, Rob Herring wrote: > On Wed, Nov 3,
 2021 at 11:08 AM Jae Hyun Yoo > <jae.hyun.yoo@linux.intel.com> wrote: >> >>
 Hi Rob, >> >> On 11/2/2021 6:20 PM, Rob Herring wrote: >>> On Tue, [...] 
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1miKCW-0006l9-VG
Subject: Re: [Openipmi-developer] [PATCH -next v2 5/6] dt-bindings: ipmi:
 aspeed, kcs-bmc: add 'clocks' as a required property
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>, jae.hyun.yoo@intel.com,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/3/2021 9:29 AM, Rob Herring wrote:
> On Wed, Nov 3, 2021 at 11:08 AM Jae Hyun Yoo
> <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> Hi Rob,
>>
>> On 11/2/2021 6:20 PM, Rob Herring wrote:
>>> On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
>>>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>
>>>> Add 'clocks' as a required property.
>>>>
>>>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>> ---
>>>> v1 -> v2:
>>>> Changes sinve v1:
>>>>    - Added 'clocks' property into kcs-bmc bindings using
>>>>      'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
>>>>      'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>>>>      separate patch later.
>>>>
>>>>    .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
>>>>    1 file changed, 7 insertions(+)
>>>>
>>>
>>> Running 'make dtbs_check' with the schema in this patch gives the
>>> following warnings. Consider if they are expected or the schema is
>>> incorrect. These may not be new warnings.
>>>
>>> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
>>> This will change in the future.
>>>
>>> Full log is available here: https://patchwork.ozlabs.org/patch/1549943
>>>
>>>
>>> kcs@114: 'clocks' is a required property
>>>        arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
>>>
>>> kcs@24: 'clocks' is a required property
>>>        arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>>>
>>> kcs@28: 'clocks' is a required property
>>>        arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
>>>
>>> kcs@2c: 'clocks' is a required property
>>>        arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
>>>        arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
>>>
>>
>> #4/6 in this patch adds 'clocks' into aspeed-g5.dtsi and aspeed-g6.dtsi
>> as a default property and all above dts files include the dtsi file so
>> these warning shouldn't be seen. Is it a result after applying all
>> changes in this series or just after cherry picking #5/6 patch only?
> 
> Only patch 5 is applied.
> 
>> I tested 'dtbs_check' before submitting this series I tested it again
>> and got the same good result like below.
>>
>> Aren't the above warnings false positive? Or did I miss something?
> 
> What you missed is this is an ABI. You cannot make something required
> that was not required before. If the driver follows the schema and
> makes 'clocks' required, then old DTBs with a new kernel will break.

Okay. I got it clearly and understand that it could introduce a problem
in that case. Thanks for your clarification.

> It's possible that 'clocks' was always required or that it never
> worked without clocks, then this change is okay. Looking at this
> patch, I have no way to know that. The commit message has to explain
> that. A commit message needs to answer WHY are you making the change.
> You don't really need WHAT the change is as anyone can read the diff.

Then what would be better? Would it be good enough if I add more detail
commit message including a note that dtb recompiling is required? Or,
should I change this series to treat the 'clocks' as an optional
property? Can you please share your thought?

Thanks,
Jae

> Rob
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
