Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB401442473
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 00:59:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhhCx-0000Rv-49; Mon, 01 Nov 2021 23:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1mhhCv-0000Rp-AK
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:59:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FcjTbsYIZWyb4yEsomaI2z8Yb96YA9JPU5o9b1P3AfA=; b=PLChodMr9IELiDJ/m8dyVUYqVz
 05/2zhNPOpPY1wXRb8bHFSKpoc4LlrDlXl/P18vAGpZmT0B1lWaDWQFCm1AIwu9U5C3xYawsn00fF
 bE7WNQdF+y87sCitVnbDGaYVb4AnLQICLMd3P8JYAaBd/5rSfBl5c10cnwILseWsghTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FcjTbsYIZWyb4yEsomaI2z8Yb96YA9JPU5o9b1P3AfA=; b=ZbUpWzfmQOugujmjt1A++WRVMw
 fHDm/7bAyGkQe6uzlzA3EVorFsWMLdQkk4jc7mfxgEMEAkLPR51biaQNU3YBJ2eciz8dSBMknLcQH
 pqaYHtwwjxzosQzoi/CyLXsaDQxdCmWYFnuuY/WTLKS/7gh54tSqmwbCxLT5nFvSDPqA=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhhCt-00DHZ8-2a
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:59:16 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="228603081"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="228603081"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:59:09 -0700
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="540611623"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.212.215.227])
 ([10.212.215.227])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:59:09 -0700
Message-ID: <9857f68a-365d-e569-b083-85c10edf9bba@linux.intel.com>
Date: Mon, 1 Nov 2021 16:59:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Joel Stanley <joel@jms.id.au>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-2-jae.hyun.yoo@intel.com>
 <CACPK8XcAN-SsKDS2E_Cnv=5-Rq=9sAWYyb88i2Ub-iX0WH6aZw@mail.gmail.com>
 <3b90b836-d35f-fe98-69b1-69ebcecf54ea@linux.intel.com>
 <CACPK8XcR0zR10_dPOM0atyqU3TarkWZ9N4r0B94N56_gebjJaw@mail.gmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <CACPK8XcR0zR10_dPOM0atyqU3TarkWZ9N4r0B94N56_gebjJaw@mail.gmail.com>
X-Spam-Score: -7.0 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/1/2021 4:52 PM, Joel Stanley wrote: > On Mon, 1 Nov
 2021 at 23:48,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote: >> >>> Reviewed-by:
 Joel Stanley <joel@jms.id.au> >>> >>> Do you need to upd [...] 
 Content analysis details:   (-7.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mhhCt-00DHZ8-2a
Subject: Re: [Openipmi-developer] [PATCH -next 1/4] ARM: dts: aspeed: add
 LCLK setting into LPC IBT node
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
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>, Cedric Le Goater <clg@kaod.org>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/1/2021 4:52 PM, Joel Stanley wrote:
> On Mon, 1 Nov 2021 at 23:48, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>>
>>> Reviewed-by: Joel Stanley <joel@jms.id.au>
>>>
>>> Do you need to update the bindings too?
>>
>> Hi Joel,
>>
>> Right, I have to update 'aspeed,ast2400-ibt-bmc.txt'. Will add update
>> in v2. Thanks a lot for your review and for reminding me. :)
> 
> Note that they've moved to Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml
> 
> You can find this commit in linux-next.
> 

Got it. Thanks again!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
