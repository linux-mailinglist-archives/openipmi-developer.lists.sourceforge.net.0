Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDRvOFlV5mkDuwEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Apr 2026 18:33:29 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B95742F9D8
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Apr 2026 18:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XJ688tfwc0+zhTtQrO4rSWSSOY8cpRKicVLDlnLChTs=; b=JlHudv9bmC3lzb9jUm9SZOLKgb
	KCPNNyXvCJeQP2PPnSu8QG/T1oLX4wv1ruWDbx45q4N5XlvGoTlvu15+D+cvVHDqpbMYuhHxjwOo6
	mYBoizpUBSIJc13RjjoB1aVJLCXBGBLR5y9+jw3PD8IOc8shbSs3T2GQB6OEdhxR5qYg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wErYo-0004am-6u;
	Mon, 20 Apr 2026 16:33:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wErYm-0004ad-AM
 for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Apr 2026 16:33:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o5iBShq+fd5aMbsN0/l2xsgHdkTpLIEqmvkauY4V3ds=; b=dleC4zYs1wCRpA8Gp+thWIMHzq
 IsPNRQJ8ajBlljOiEbeeaDrDhwZNjO+keQVGlJ//G6YWhlbWhOljflGZivNIM8HCTmJhip48AWqCO
 u6DNKp3UI+PIQjMYiFCjk1h2/zLEp4idDvSCKzmPcoRSoOp7guMXF+VaUKflnauEfuoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o5iBShq+fd5aMbsN0/l2xsgHdkTpLIEqmvkauY4V3ds=; b=WQK2M2pkV/hlxDRYPTuNDrVSGF
 P07SB9XFw4iupdXEDKpFikz+YS+AhDFdBgbqPbnEVLhBNaCPCJhAdaZpGmUHEfBcxkK8mzQLWa54f
 Wr7SvAZgGKLhzt4MIixLfMC2HplNyO0DXc3O2D6EhpYfifZV1LFwFfhNA6vKqVDs1cFI=;
Received: from mail-oa1-f52.google.com ([209.85.160.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wErYj-0005rg-0k for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Apr 2026 16:33:17 +0000
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-4230a00de40so3401563fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Apr 2026 09:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776702786; x=1777307586; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o5iBShq+fd5aMbsN0/l2xsgHdkTpLIEqmvkauY4V3ds=;
 b=GDWweT3hjuap5mxF1LHLF8uSVkBe2AhgcdD+UNoHfpcmx7WLEAm3I2u4SvYa81iCuc
 KIf8Qe/H4G9YS69AmXjk/pRQ1WCdYiGJJqrSJIfQ/9XdReNUAwf4Ka7g7K0+boSOIrJt
 SlNDiIJ/1OPAuT2RW7Rywnim34IF8ku1aUwNzvyCVxYGhYEz+SrzHCLx15yU28KzwLG5
 ybFBoHSdACp87ODlMn4Lrn9Y6UNqkYA6cTcIkcALehAVNiYsaiLfIilV3nkhn54GVJwP
 OqSVGOojENMMG3BbdvytyiA1VL1MrZwACg/f0IJepSGRPjv+TWGkjSg5mxoqga5frU2A
 /yKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776702786; x=1777307586;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=o5iBShq+fd5aMbsN0/l2xsgHdkTpLIEqmvkauY4V3ds=;
 b=gSabCVcYbsGtdQ/yDnQdhhQmR3ax9l5MWoVwdynYpcwZNzFAY7s0OGnuUVT0dubiWu
 EOwivRUr0TnKWoJGwtoLSOV9ODmGSy9g0VwJwGGvkwTWos916XmuRK5lbHebGAhU0cNk
 yP0wGXg75or1HESc5BQ4PyLMb2LTwZ7c+OHN758aCh7KILsCaPyzwBExbg9AZ0Xsjrjo
 NQ/NvTeqlpbqdRF8m+FMX2vcyWm/398cNfaGvkFGshwXWTAh47nW6rPRP05fhvGr/Db7
 2YFjRZtMpebTpsKNMHj+SvEU6y2JGH5q5taafYcKUGUKYPycjPz1a2KcUpr0z7RS9dSe
 KjRQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8C83s4/ik+9EXN/ZG7bui1ib+pEoLczUtm5udSNj32pUMFwmZxIl5wecykql99pQURtQOhUSEPm8g/ru702PTxavo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxpghj1DdsudOQ4Ke9VQxqej6PwV5UyFF69lEjPS75zCHSTJK02
 4rDlQcCQQuaRKGrByqpdjxJb3YOsavAFSWMw6+uOkKvZoBDd5ydSo08kIXncNzZ6NNA=
X-Gm-Gg: AeBDiesJQPW/AIc2PZ68nQkz6WJXQtsuVduPHSimz8cZWTNHc9xmnTWdChVFoIAJYLg
 aAkD/7g+bV68nY1bQqH/fd/gWzuH9Pt5MGW5hzflp9wIGGtAoBP59u4tInuibgCibTT2E60f1gW
 ppuwBNU/umDj0ljTxFgwwKMCLe8AR+jSHMIIvTvkhiVHhKS4bkLi6579scIESpgU3SCzMIjG8Ci
 wBiL+56l7E8M81qm3fCL364jovBiyFiMTIo8OIncyz22dpv2cBjZ/L0s75MclMvVMOlT73GJnJL
 8KJpdAe4mfA3YCxmR9LL/IgsCEJg1oz5QMq8aOv4OS23yFuvL6vlNtZB5zV6OjLp3Ko8+f8gYvD
 zIsxC56fOpQkAQZWM89THiZtRksXg7UeB252fgZqsLO3h9ofhn0MnNpQ9mqY7jZTcPanNcrTgyB
 22P+emZSYfQJZXRdyG44SwMwEeM15bkiE5z8JVtEgMGq1nmcdSce//vq64uwgGilqVQ9hAWJyC7
 Bfj46f0tvETZAIJBj+r5Q6CSA==
X-Received: by 2002:a05:6820:1507:b0:67e:3305:d7eb with SMTP id
 006d021491bc7-694636e74e5mr6069805eaf.10.1776702786180; 
 Mon, 20 Apr 2026 09:33:06 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d47a:597e:1b35:c35f])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-69493183021sm325603eaf.13.2026.04.20.09.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 09:33:04 -0700 (PDT)
Date: Mon, 20 Apr 2026 11:33:01 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>
Message-ID: <aeZVPUV_gPrgITJQ@mail.minyard.net>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
 <aeKwa4napKfBerJM@matt-Precision-5490>
 <aeLIE0Psdlvr9l7j@mail.minyard.net>
 <aeUsnI2nHAbtqoqt@matt-Precision-5490>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeUsnI2nHAbtqoqt@matt-Precision-5490>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Apr 19, 2026 at 09:50:38PM +0100, Matt Fleming wrote:
 > On Fri, Apr 17, 2026 at 06:53:55PM -0500, Corey Minyard wrote: > > > >
 The EVENT_MSG_BUFFER_FULL flag only gets cleared when a unsuccess [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wErYj-0005rg-0k
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add timeout to unconditional
 wait in __get_device_id()
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
 linux-kernel@vger.kernel.org, Tony Camuso <tcamuso@redhat.com>,
 openipmi-developer@lists.sourceforge.net,
 Frederick Lawler <fred@cloudflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,m:fred@cloudflare.com,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto]
X-Rspamd-Queue-Id: 2B95742F9D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 19, 2026 at 09:50:38PM +0100, Matt Fleming wrote:
> On Fri, Apr 17, 2026 at 06:53:55PM -0500, Corey Minyard wrote:
> > 
> > The EVENT_MSG_BUFFER_FULL flag only gets cleared when a unsuccessful
> > READ_EVENT_MSG_BUFFER command completes.  Getting data from the
> > BMC has higher priority than sending data to the BMC.
> > 
> > If the BMC continually reports success from READ_EVENT_MSG_BUFFER, then
> > that would certainly wedge the driver.  But it would have to continually
> > report success for that command, which would be strange as its supposed
> > to error out when the queue is empty.
>  
> That does indeed appear to be what's happening.
> 
> The implementation of intel-ipmi-oem's OpenBMC READ_EVENT_MSG_BUFFER
> handler does not fail when there is nothing to read,
> 
>   https://github.com/openbmc/intel-ipmi-oem/blob/master/src/bridgingcommands.cpp#L704

Actually, that is so clearly wrong that it's hard to imagine they made
this mistake.  Anyway, a defect needs to be filed against it.  It will
certainly break other software on other OSes.

I think I have an easy workaround, though I'm guessing.  I'm guessing
they are returning zero data bytes. There's no check on the size at that
point in the code (it's later).

Can you try the following patch?

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 4a9e9de4d684..cf8674a93af1 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -630,7 +630,13 @@ static void handle_transaction_done(struct smi_info *smi_info)
                 */
                msg = smi_info->curr_msg;
                smi_info->curr_msg = NULL;
-               if (msg->rsp[2] != 0) {
+               /*
+                * It appears some BMCs, with no event data, return no
+                * data in the message and not a 0x80 error as the
+                * spec says they should.  Shut down processing if
+                * the data is not the right length.
+                */
+               if (msg->rsp[2] != 0 || smi_info->curr_msg->rsp_size != 19) {
                        /* Error getting event, probably done. */
                        msg->done(msg);

 
With your approval on that, I'll send it to Linus after letting it sit
in the next tree for a bit.  Actually, I'll probably add it in any case,
as it's a good check to do.

> 
> > If it's really something like that, I could also look at adding limits
> > for those operations.
> 
> That would be great. Me and Fred would be happy to test out any patch.
> 
> I still think the original patch I sent is a worthwhile defense.
> 
> Our periodic monitoring scripts cause TASK_UNINTERRUPTIBLE tasks to
> block behind one another when we hit these kinds of issues in the IPMI
> code. Untangling that across thousands of machines can be time
> consuming and a more explicit EIO or ETIMEDOUT would help with triage.

Unfortunately, that might have other issues, similar to the ones the
people with the watchdog issue found.  I'll look at it a bit, but those
sorts of things would have to be scattered all over the code, not just
in that one place.  As you say, it would make debugging easier.

I think adding a counter to the number of operations occuring from a
single flag fetch would be a way to avoid this issue.  That's going to
take a little more time, but I'll definitely work on that.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
