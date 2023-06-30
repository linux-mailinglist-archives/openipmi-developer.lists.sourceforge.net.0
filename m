Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C9774320F
	for <lists+openipmi-developer@lfdr.de>; Fri, 30 Jun 2023 03:01:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qF2W0-0001On-4X;
	Fri, 30 Jun 2023 01:01:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@aj.id.au>) id 1qF2Vy-0001Og-Oz
 for openipmi-developer@lists.sourceforge.net;
 Fri, 30 Jun 2023 01:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wAbEe/5fxRFHIGtjp6fsuq4DKoHUotvs5QCm3RZOtq0=; b=gR1xGnOUWrkfehK9ggM9fmFpCa
 7/ItNj9KQQbd9aEJG4UunWWhP5LyogcLwEj/PNUYlvsbmtfMwSFF3ZBHUPjtICW3wxiUiT+R+3ycV
 LBJRjraoyIHO20MjzL11ex1CAqA2V5nhpL3I3bMZ1LZm82i+3CEwM+7Xdq2Er2piFtAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wAbEe/5fxRFHIGtjp6fsuq4DKoHUotvs5QCm3RZOtq0=; b=Iy4Me/mRrE2+pKA0tuqiOZOVHK
 Gjr7F8IKZp/LHd8+WZKshZrezaNGFJ8YmGOVlG2/d3Mk1+r3M99gtSDjrmJg580dyWH2jLVKOPgI9
 z153z53lvHAzSkIiohxuEG5erVj/IyW+zM+Zm7KUK68TzxyukSSoWQhkxZ8mFRn0lD8U=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qF2Vu-001eKe-NL for openipmi-developer@lists.sourceforge.net;
 Fri, 30 Jun 2023 01:01:35 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 7C8803200564;
 Thu, 29 Jun 2023 21:01:24 -0400 (EDT)
Received: from imap50 ([10.202.2.100])
 by compute6.internal (MEProxy); Thu, 29 Jun 2023 21:01:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1688086884; x=1688173284; bh=wA
 bEe/5fxRFHIGtjp6fsuq4DKoHUotvs5QCm3RZOtq0=; b=RhoCDTMf298Ij8oP7n
 Jr8ethIj9rc62aZpBYuvtvDrUyEsB61vUHrapqZVjZwXklsqcV4tOBaDlMizQ5Cc
 zW4HbJPlyvmo+5NInQZ6eIymqmSwyRwEEGOieqeV/G6Kgo0FuFdFa+Qwt6ne3Qsx
 vOucxgvOxzhSLU0I4b/1l7g7G2fZ4D8/yDEFRHLwFFvhBs9iMW6xCjstO+vjPwSP
 +j51RI1bO2svpyj7m0rKOSs8f5XDmCCfsR7cR56eavwOVq8y9EPs322H7X+SUJQ3
 L0xS1SGBfyB7dO3da3YbP+RXhfWt2ayuUp06H9mB531O+OTLBOiAXpPH1YuvUfyF
 Irlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1688086884; x=1688173284; bh=wAbEe/5fxRFHI
 Gtjp6fsuq4DKoHUotvs5QCm3RZOtq0=; b=kVDSEgHC1ht0TZmKGAo1buKWubCxe
 ZrP4cam1PcEo4gYzKRMgeChr3CPa3LAdPCoSeSlQ5mHw3hmjGYOqVPzLZL4zs5Ut
 xCZZ/CewPh3EcQ5YQk7+Oukm5iuk9LBFdXZBKvMur/W9hbTQ4/lphsVj++NLMNfm
 i15qTLhr8PN+Q859AeH3Y4Dy9nIYNm9gjqDA7S1ws4Axki3/GimPcfodk4iVgq+8
 aJFN0nCtgpB7XSfFdebWbc/SYHUote1rx/4x97A97wPD8hLPv+5sv/rq3fubKutJ
 B2y1G4H/IIYxsfsUPgQA/wSqaW3FToOH8bMB4Mdn9XN55vsSSDj+qXgEA==
X-ME-Sender: <xms:YymeZGuVLipz3sNK0XNc6KCa4LO8OEpze4T9YcoexODzFv2QaBJSpA>
 <xme:YymeZLfcraAE1NcKIHrjqZ2FvMh2H403ut9EmKDuW3zIzd8T6sE53tpWnAFpNqWiw
 gFlAGEKPyZzYOlJFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrtdehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepkedvkeejkefgjeduffetteegjeekteetudevtdfftdeluddthfehveef
 teekieetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:YymeZBy8Z8DRxTWNk-oyuQqXNxFz-Hl8EcqqL82lUUFSDxlnfKbg8Q>
 <xmx:YymeZBOs3xUk890_IiEZfhPqXxEtLNVsgwru8MOnNhMwv96bMJG62A>
 <xmx:YymeZG8anZyjHVY6GYYv-ZbJ7g9Ls17DxuxJy1cJapNdXxlPRoO71w>
 <xmx:ZCmeZMkGy4Qy5FOXysqcCONQHoYFvsUi1ENgOBvIHLEW0nrOWX2_Jg>
Feedback-ID: idfb84289:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B19CE1700089; Thu, 29 Jun 2023 21:01:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-499-gf27bbf33e2-fm-20230619.001-gf27bbf33
Mime-Version: 1.0
Message-Id: <9691d898-22a9-4902-871d-73f5dafabf86@app.fastmail.com>
In-Reply-To: <ZJwd0UDKYcK9AvSf@mail.minyard.net>
References: <20230627152449.36093-1-dg573847474@gmail.com>
 <ZJwd0UDKYcK9AvSf@mail.minyard.net>
Date: Fri, 30 Jun 2023 10:31:02 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey, Chengfeng, On Wed, 28 Jun 2023, at 21:17, Corey
 Minyard wrote: > Indeed, this looks like an issue. > > Andrew, any opinions
 on this? The attached patch will work, the other > option would be to disable
 interrupt [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qF2Vu-001eKe-NL
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix potential deadlock on
 &kcs_bmc->lock
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
Cc: Chengfeng Ye <dg573847474@gmail.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey, Chengfeng,

On Wed, 28 Jun 2023, at 21:17, Corey Minyard wrote:
> Indeed, this looks like an issue.
>
> Andrew, any opinions on this?  The attached patch will work, the other
> option would be to disable interrupts when calling
> kcs_bmc_handle_event() in the timer handler.  But then you have to worry
> about RT.

Right, I think we'd do best to not over-complicate things.
spin_lock_irq{save,restore}() are the intuitive choice to me.

I'll follow up with R-b/T-b tags once I've booted the patch
and done some testing.

Andrew

>
> -corey
>
> On Tue, Jun 27, 2023 at 03:24:49PM +0000, Chengfeng Ye wrote:
>> As kcs_bmc_handle_event() is executed inside both a timer and a hardirq,
>> it should disable irq before lock acquisition otherwise deadlock could
>> happen if the timmer is preemtped by the irq.
>> 
>> Possible deadlock scenario:
>> aspeed_kcs_check_obe() (timer)
>>     -> kcs_bmc_handle_event()
>>     -> spin_lock(&kcs_bmc->lock)
>>         <irq interruption>
>>         -> aspeed_kcs_irq()
>>         -> kcs_bmc_handle_event()
>>         -> spin_lock(&kcs_bmc->lock) (deadlock here)
>> 
>> This flaw was found using an experimental static analysis tool we are
>> developing for irq-related deadlock.
>> 
>> The tentative patch fix the potential deadlock by spin_lock_irqsave()
>> 
>> Signed-off-by: Chengfeng Ye <dg573847474@gmail.com>
>> ---
>>  drivers/char/ipmi/kcs_bmc.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
>> index 03d02a848f3a..8b1161d5194a 100644
>> --- a/drivers/char/ipmi/kcs_bmc.c
>> +++ b/drivers/char/ipmi/kcs_bmc.c
>> @@ -56,12 +56,13 @@ irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
>>  {
>>  	struct kcs_bmc_client *client;
>>  	irqreturn_t rc = IRQ_NONE;
>> +	unsigned long flags;
>>  
>> -	spin_lock(&kcs_bmc->lock);
>> +	spin_lock_irqsave(&kcs_bmc->lock, flags);
>>  	client = kcs_bmc->client;
>>  	if (client)
>>  		rc = client->ops->event(client);
>> -	spin_unlock(&kcs_bmc->lock);
>> +	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
>>  
>>  	return rc;
>>  }
>> -- 
>> 2.17.1
>>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
