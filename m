Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JlvOKxW7WmziAAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sun, 26 Apr 2026 02:05:00 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 292654686A4
	for <lists+openipmi-developer@lfdr.de>; Sun, 26 Apr 2026 02:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ofaMnUrLkZG+IPXeZXSMCQAZ48zn6GDMmOeW5mSTE38=; b=TBd7s2Ww1rPvp06mW1TfppBQr4
	X2IhJi9mdyJWt0GN9UhBMukmo5T/9RmF/ruXqs+h0uroVClEHRSbfzNBvNgxGV8JdxgJVvJ0hU0cX
	pfw6ceUb7WEW4yk7NfOsYzxBoCfg/FaG+kJo7KkJS8cRztd1wcV6tDzBiwPjNe9YdC2k=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wGmzS-0002VN-S9;
	Sun, 26 Apr 2026 00:04:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wGmzR-0002V7-8c
 for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Apr 2026 00:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SKKJCH+5uQ5Lecx+O6GjrzJ1UpPIHJaSU1gVtB7eY38=; b=JRyW3wdbgsBGA/9XJ3jYQTDM4m
 t4yscyweVt1Zml2rGhCFSZnjTh33D1/qFuZPIJQvHzY3gjYwrGtceKPAhiJ3cs3saVN43aUXB32OY
 jvvTb7iUPQ4MsaNYoH2DjITdoBMqNEXb5UaOZ0oFNURf5/WQqoFfrsiNy2Vk3SAqpJwY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SKKJCH+5uQ5Lecx+O6GjrzJ1UpPIHJaSU1gVtB7eY38=; b=NxooK7z735zMrVsRvVS+zZwuTf
 zsHnoLL7lPhMiKxW8CA4yP2KaWeVVpPxu1q2/wUe18fVhRh3hTgtfvfJLTkmv8EMDy1vWjjHDbmuR
 V4AA/5U57WI+vUyxfq8W/nBSa5oakIDLg1Uk9toRxKK83hX5vbXRybKXeOQNFVtSnNao=;
Received: from mail-dy1-f170.google.com ([74.125.82.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wGmzR-0006xg-CO for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Apr 2026 00:04:49 +0000
Received: by mail-dy1-f170.google.com with SMTP id
 5a478bee46e88-2d8ffdc31d0so906508eec.0
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 25 Apr 2026 17:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1777161879; x=1777766679; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SKKJCH+5uQ5Lecx+O6GjrzJ1UpPIHJaSU1gVtB7eY38=;
 b=jHyh+GNtHxKynj2TpwHEoq7XNi0Q/z3bYMyylULD7GFDiCioAF7LP69WiSeJ72sWTZ
 x3V3qluzDEicNAgajbuNR2eExzRz/l7Xpw6CRfznqqM3+riJtBfDpB79a1JZ+qA+HV99
 nrpTyAAugM1ud70q141ajOQXeDUW8672k/ln4iLplFx3efo1NHzYaKwA9ix9tt1xfsjO
 FRK0odoBOrYeETseXBI8GMHR75po3pgfTWfulSGgg5crP5JacKpzkE9uMwgkJRI5Pska
 xHEY9P3DtczX/PjTjyNhxFR1ej7AFMbc19lwp021/ZAN8pqmxENwpuYPYkGSaGM2ixpO
 o/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777161879; x=1777766679;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=SKKJCH+5uQ5Lecx+O6GjrzJ1UpPIHJaSU1gVtB7eY38=;
 b=lyVZbqEb4IIJn8SQhIoPrRod8fPHwtUysa4BrfFsTXlkjJ+znuVF7NQKlLkzBwbi92
 f9TUlArVGtTtKFA/KfV0Y3YAx8O9754F9d/UIPAp0bi7DYwIY9+QYJFjkjYYGMj3V5vE
 xZWClAq7e7VTpCRMlqSjV1z3+XV/3vk4yWDtOPRA6qU6HsCorSc0MpF0FH7UXw7XckV9
 YhfhwMu+3dAyF95G71FazjztZBL+8pBZ3p7bV/Dy64QXsY7pc7pnl629Tr/eXGRDmvwN
 mQiPhstEQyUjdueC9Wo41DnbkC0+LBwu2GgmYl5BjS2CZHqwBasIGKCSLogYSLf+Qdi9
 p1eg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/m9/t/6EG+3QWH0xBBeT0QgqSpKqRJUExVKVW1iPRzP5H5izfPbkIWiS/ktgssQlSfHTk3K49Osfl+sWqnqXYOEeQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzXymGwf3bdTRxxfcEaywRFaBKDpwkcHD3qRtjOWKnzO0Ov6ceo
 Ixcc4Q3GiqeVj9rQFNahXHlDauIJJ+k71vG7iaqNh0pWVI6eCjVw81foEW+bzbmzoknnRwuGnyC
 PfJDW
X-Gm-Gg: AeBDietyXeClC3Ne/yFg5uCgxdtOxzDjuwv20YRK1PseSHjoM+IorZhC766rfp+CwS1
 eeSyf8wWH65vmbFB775D7DSQpvGSwBvqzJzbDvTjYSPpt+rbSQgONY18gWlMgFDOJbmHYbkMx77
 2X0RF82N/mbr23KO3fVvY/oJNxW2jA7LP1jRBmW38PXpOXVo8m9FeoH8qzcEn9b0Wc/BjqgANlg
 Qs22q3ARQQGGSCBATTwFVy+TOPZkHR6PnyKtSqrYH2/3hVgZyvQKc4cEuniPjutofqx+lDJ5usx
 tBeH5+3kNh1m0BL31IT9KlO9hkFc09D0C97knUN01Fcyx1cqodu5eITctZVnZvLc6io2urQ89Ff
 C4I1MC2QC93EBLiPgFGUIwgT5YolNboSnUeWP7EBk1z3Vrl/1Pljee+sLtyMxbNd41Hb8Gp35Gy
 8klrfqwrafnIviTMlb4Y76ol1+5fVpAZnAL4vtzkRnkMnCyoXNmdr7He8ZFfx29QA66t9fmdDDf
 9+jsD6pZT3j79yB7hbPuS2v9MSzWDuDDxbP
X-Received: by 2002:a05:6808:4fec:b0:467:112e:4590 with SMTP id
 5614622812f47-4799cb31b57mr20806105b6e.46.1777161535251; 
 Sat, 25 Apr 2026 16:58:55 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:6f78:34bd:5e93:9329])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-479a028cab5sm18097578b6e.16.2026.04.25.16.58.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2026 16:58:53 -0700 (PDT)
Date: Sat, 25 Apr 2026 18:58:48 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>
Message-ID: <ae1VOEhdR0H0rf0a@mail.minyard.net>
References: <20260421132544.2666174-1-corey@minyard.net>
 <20260421132544.2666174-3-corey@minyard.net>
 <aeyJ0fClAWI2lBwL@matt-Precision-5490>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeyJ0fClAWI2lBwL@matt-Precision-5490>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Apr 25, 2026 at 10:36:05AM +0100, Matt Fleming wrote:
 > On Tue, Apr 21, 2026 at 07:42:44AM -0500, Corey Minyard wrote: > > The
 driver would just fetch events and receive messages until the > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wGmzR-0006xg-CO
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: Add limits to event and
 receive message requests
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
Reply-To: corey@minyard.net
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Camuso <tcamuso@redhat.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 292654686A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,minyard.net:replyto,minyard.net:email,cloudflare.com:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

On Sat, Apr 25, 2026 at 10:36:05AM +0100, Matt Fleming wrote:
> On Tue, Apr 21, 2026 at 07:42:44AM -0500, Corey Minyard wrote:
> > The driver would just fetch events and receive messages until the
> > BMC said it was done.  To avoid issues with BMCs that never say they are
> > done, add a limit of 10 fetches at a time.
> > 
> > This is a more general fix than the previous fix for the specific bad
> > BMC, but should fix the more general issue of a BMC that won't stop
> > saying it has data.
> > 
> > This has been there from the beginning of the driver.
> > 
> > Reported-by: Matt Fleming <mfleming@cloudflare.com>
> > Closes: https://lore.kernel.org/lkml/20260415115930.3428942-1-matt@readmodwrite.com/
> > Fixes: <1da177e4c3f4> ("Linux-2.6.12-rc2")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Corey Minyard <corey@minyard.net>
> > ---
> >  drivers/char/ipmi/ipmi_si_intf.c | 15 +++++++++++++++
> >  drivers/char/ipmi/ipmi_ssif.c    | 15 +++++++++++++++
> >  2 files changed, 30 insertions(+)
>  
> [...]
> 
> > @@ -410,6 +413,7 @@ static void start_getting_msg_queue(struct smi_info *smi_info)
> >  
> >  	start_new_msg(smi_info, smi_info->curr_msg->data,
> >  		      smi_info->curr_msg->data_size);
> > +	smi_info->num_requests_in_a_row = 0;
> >  	smi_info->si_state = SI_GETTING_MESSAGES;
> >  }
> >  
> > @@ -421,6 +425,7 @@ static void start_getting_events(struct smi_info *smi_info)
> >  
> >  	start_new_msg(smi_info, smi_info->curr_msg->data,
> >  		      smi_info->curr_msg->data_size);
> > +	smi_info->num_requests_in_a_row = 0;
> >  	smi_info->si_state = SI_GETTING_EVENTS;
> >  }
> >  
> 
> Would it be better to move this zeroing to handle_transaction_done()?
> Otherwise we reset the counter in handle_flags() ->
> start_getting_events() and the threshold is never reached.

Oh, yeah.

Moving it to handle_transaction_done() is not ideal, though.  If
something was spewing receive messages, it would never get to events,
which is why I did it like I did.

The following should fix this.  You could also have different limits for
receive messages and events, but I think the following is more clear.

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 2a739123270c..e46f4150ceb5 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -413,8 +413,10 @@ static void start_getting_msg_queue(struct smi_info *smi_info)

 	start_new_msg(smi_info, smi_info->curr_msg->data,
 		      smi_info->curr_msg->data_size);
-	smi_info->num_requests_in_a_row = 0;
-	smi_info->si_state = SI_GETTING_MESSAGES;
+	if (smi_info->si_state != SI_GETTING_MESSAGES) {
+	    smi_info->num_requests_in_a_row = 0;
+	    smi_info->si_state = SI_GETTING_MESSAGES;
+	}
 }

 static void start_getting_events(struct smi_info *smi_info)
@@ -425,8 +427,10 @@ static void start_getting_events(struct smi_info *smi_info)

 	start_new_msg(smi_info, smi_info->curr_msg->data,
 		      smi_info->curr_msg->data_size);
-	smi_info->num_requests_in_a_row = 0;
-	smi_info->si_state = SI_GETTING_EVENTS;
+	if (smi_info->si_state != SI_GETTING_EVENTS) {
+	    smi_info->num_requests_in_a_row = 0;
+	    smi_info->si_state = SI_GETTING_EVENTS;
+	}
 }

 /*


> 
> Thanks,
> Matt


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
