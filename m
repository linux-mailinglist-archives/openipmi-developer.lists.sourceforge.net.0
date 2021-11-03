Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB514445B5
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 17:16:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1miIvr-0000ah-MQ; Wed, 03 Nov 2021 16:16:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1miIvi-0000aA-2y
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kxIi+TY/5bH0+WosUfgcX6SzgX7C1rcrGttMSAo5tCU=; b=cnEldPg9u4c0o0yV3hxs62GoT5
 ruZg7nH5HD7qrracz5AF36BfP6Di7Li6bruFm8/KsZQSJ1U3iDi1K4AlN9f12il2tRprjK3uNN5Qj
 iE9r0V+MsqIKY1k99+nv5HzKQRar24/drzJWLXRBCKfhhD4NcxpNmZPgBiqNmuEhMhLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kxIi+TY/5bH0+WosUfgcX6SzgX7C1rcrGttMSAo5tCU=; b=FON5tO/s9692s3RjpIPfDRzOeU
 ktnRWxHQXE+7Ld3V8hnzb8mEk42n+Za0zb4/4HnRSxHtINfRo1YFEfjabYnYetLuaX0HCf2gGrsem
 LmmhEIECBxLPMIW16qAdHw2X74NCJesuHQte29LB9riAbrZbGvVchHuQpVHyHlqu5zwg=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1miIvd-0002CJ-B8
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 16:15:57 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="230256044"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="230256044"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 09:15:51 -0700
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="450120981"
Received: from yoojae-mobl.amr.corp.intel.com (HELO [10.212.171.79])
 ([10.212.171.79])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 09:15:51 -0700
Message-ID: <2aeffcdf-0bb7-98f1-5d4e-909b7d86c44a@linux.intel.com>
Date: Wed, 3 Nov 2021 09:15:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Andrew Jeffery <andrew@aj.id.au>, Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, =?UTF-8?Q?C=c3=a9dric_Le_Goater?=
 <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-4-jae.hyun.yoo@intel.com>
 <372dc598-4ee0-482d-8d1a-ff34eb8cde7d@www.fastmail.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
In-Reply-To: <372dc598-4ee0-482d-8d1a-ff34eb8cde7d@www.fastmail.com>
X-Spam-Score: -4.3 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/2/2021 3:22 PM, Andrew Jeffery wrote: > > > On Tue,
 2 Nov 2021, at 10:07, jae.hyun.yoo@intel.com wrote: >> From: Jae Hyun Yoo
 <jae.hyun.yoo@linux.intel.com> >> >> Add LCLK clock setting into LPC [...]
 Content analysis details:   (-4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1miIvd-0002CJ-B8
Subject: Re: [Openipmi-developer] [PATCH -next 3/4] ARM: dts: aspeed: add
 LCLK setting into LPC KCS nodes
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 11/2/2021 3:22 PM, Andrew Jeffery wrote:
> 
> 
> On Tue, 2 Nov 2021, at 10:07, jae.hyun.yoo@intel.com wrote:
>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>
>> Add LCLK clock setting into LPC KCS nodes to enable the LCLK by
>> individual LPC sub drivers.
>>
>> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Thanks Andrew for your review!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
