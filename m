Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E9A44459D
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 17:13:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1miItD-0003vf-9U; Wed, 03 Nov 2021 16:13:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1miItB-0003vT-Q5
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RAEmODyTjTVYhd8+14JpdSmwFxvYkc72HWVfb0ft41M=; b=EyKBzaXkNtPsYdCbDrrJA6yHqv
 TmJSVMc91eoscSrzdgUvm+QPDfqsDfemFijSVhKShFi0dBJDvdAzA0adMoXRekN81y/OslLMWt6O/
 iIN8ERGJzLdPpDVJvc2Q8xbFJ64RyfznV1oSJ/nxwUp7pnWU8drDRpn7mBlVXRJ6aEew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RAEmODyTjTVYhd8+14JpdSmwFxvYkc72HWVfb0ft41M=; b=FqE6XJPA9Lcz4eW+S57CrWQh1s
 lD3g99Oj26imBxDOo2jF7DwmlOLet2Ji1Q564owGsMpmC6PonS5dLNME1FOEuvMQfT5GmoyWs+zid
 w0nqKbwSET3Nzq93xUuOFPQJ3sVaU1GwTlppRkVqISsAp0GtHeW/hL/06UEkfJvP0UOM=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miIt6-0001nM-KH
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:13:24 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="228987390"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="228987390"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 09:13:15 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="450120304"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.212.171.79])
 ([10.212.171.79])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 09:13:14 -0700
Message-ID: <e5646939-79ed-a588-da22-4ec45213e49a@linux.intel.com>
Date: Wed, 3 Nov 2021 09:13:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: minyard@acm.org, Rob Herring <robh@kernel.org>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <20211103015227.GO4667@minyard.net>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20211103015227.GO4667@minyard.net>
X-Spam-Score: -7.0 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/2/2021 6:52 PM, Corey Minyard wrote: > On Tue, Nov 02, 
 2021 at 08:20:37PM -0500, Rob Herring wrote: >> On Tue, 02 Nov 2021 13:37:16
 -0700, jae.hyun.yoo@intel.com wrote: >>> From: Jae Hyun Yoo <j [...] 
 Content analysis details:   (-7.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1miIt6-0001nM-KH
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>, Rob Herring <robh+dt@kernel.org>,
 jae.hyun.yoo@intel.com, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/2/2021 6:52 PM, Corey Minyard wrote:
> On Tue, Nov 02, 2021 at 08:20:37PM -0500, Rob Herring wrote:
>> On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
>>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>
>>> Add 'clocks' as a required property.
>>>
>>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>> ---
>>> v1 -> v2:
>>> Changes sinve v1:
>>>   - Added 'clocks' property into kcs-bmc bindings using
>>>     'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
>>>     'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>>>     separate patch later.
>>>
>>>   .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
>>>   1 file changed, 7 insertions(+)
>>>
>>
>> Running 'make dtbs_check' with the schema in this patch gives the
>> following warnings. Consider if they are expected or the schema is
>> incorrect. These may not be new warnings.
>>
>> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
>> This will change in the future.
>>
>> Full log is available here: https://patchwork.ozlabs.org/patch/1549943
>>
> 
>  From the code, I think this change will break all these platforms, as
> the initialization of kcs will fail without the clock property.  I'm
> going to pull this out until it gets sorted out.
> 
> Also, could you rebase on the latest kernel when submitting next time?
> There was a minor thing I had to fix up.
> 
> -corey

Hi Corey,

I believe that this series will not break these platforms if this series
applied correctly but I agree with that we don't need to rush this.

I'll submit v3 after rebasing it on the latest master when all queued
changes in '-next' are merged. It would be also good for reducing
confusions if any.

Thanks,
Jae

>>
>> kcs@114: 'clocks' is a required property
>> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
>>
>> kcs@24: 'clocks' is a required property
>> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>>
>> kcs@28: 'clocks' is a required property
>> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
>>
>> kcs@2c: 'clocks' is a required property
>> 	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
>> 	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml
>>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
