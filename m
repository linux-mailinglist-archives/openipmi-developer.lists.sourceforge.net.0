Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1CA445704
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Nov 2021 17:17:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mifQZ-0006GX-DQ; Thu, 04 Nov 2021 16:17:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1mifQY-0006GQ-1G
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Nov 2021 16:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bVp9850+jTTPwsrSFdifPrq3gfejMy4ILQg37Gt4DDw=; b=PwWj3d2TXN69nGfQW8J14JkZxK
 smuBjL35rNvu8J10A45lBYLfKYXtWpGFZUMBFxh+ehZ45s6+Db18jEq1UWy6AfHf3TpeidztCPoUM
 0gDLIZfMVslnMnrJvWw4/5orSb1rkn4zg5S9AfIdG+PEaQBT6C/iulFT6uhsNhUtBRNw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bVp9850+jTTPwsrSFdifPrq3gfejMy4ILQg37Gt4DDw=; b=mUxP9nWJaUT6mmIrMBkTaKcD0u
 qjVpAlLIE8zurlq5hNE22i2/ksAUFYjQYxpfuNDR2mlYS0jMzmKyVAFfLDaOqhdt8S/pNS4rgO83f
 15+XY5lhcm3aGCyq0Og4/o4b/wCdCGXupMvWFMLt2pRvj69KPFViFWqDR4jAJ4GdYUfM=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mifQW-0004HD-5N
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Nov 2021 16:17:21 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="218638443"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="218638443"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:16:58 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="468521539"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.209.121.122])
 ([10.209.121.122])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:16:57 -0700
Message-ID: <27c6e902-7cb3-97c6-f4db-b31a81869115@linux.intel.com>
Date: Thu, 4 Nov 2021 09:16:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Joel Stanley <joel@jms.id.au>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
 <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com>
 <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
 <796e0c02-5bca-e8a9-a17f-898aafec237f@linux.intel.com>
 <CACPK8Xcwkz1QLOvN0MiSkX+jj2NZY10--1qo7M8UMyEmQQtYmA@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <CACPK8Xcwkz1QLOvN0MiSkX+jj2NZY10--1qo7M8UMyEmQQtYmA@mail.gmail.com>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/3/2021 3:45 PM, Joel Stanley wrote: > On Wed, 3 Nov
 2021 at 17:27, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote: >> >> On
 11/3/2021 9:29 AM, Rob Herring wrote: > >>> It's possible that 'clo [...]
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mifQW-0004HD-5N
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
Cc: Rob Herring <robh@kernel.org>, Corey Minyard <minyard@acm.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/3/2021 3:45 PM, Joel Stanley wrote:
> On Wed, 3 Nov 2021 at 17:27, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>>
>> On 11/3/2021 9:29 AM, Rob Herring wrote:
> 
>>> It's possible that 'clocks' was always required or that it never
>>> worked without clocks, then this change is okay. Looking at this
>>> patch, I have no way to know that. The commit message has to explain
>>> that. A commit message needs to answer WHY are you making the change.
>>> You don't really need WHAT the change is as anyone can read the diff.
>>
>> Then what would be better? Would it be good enough if I add more detail
>> commit message including a note that dtb recompiling is required? Or,
>> should I change this series to treat the 'clocks' as an optional
>> property? Can you please share your thought?
> 
> Make it essential. It was only by accident that things have worked
> without this change.
> 
> While keeping backwards compatibility with dtbs is a goal we strive
> for, in practice we use the dtb from the corresponding kernel source
> tree, so as long as the patch to the driver is applied in the same
> place as the patch to the device tree no systems will break.

Okay. I'll keep 'clocks' property as a required property and will make
the commit message of this patch more descriptive. Thanks a lot for your
feedback.

Cheers,
Jae



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
