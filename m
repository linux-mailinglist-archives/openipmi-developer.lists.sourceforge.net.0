Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABE6I3ps5mkJwQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Apr 2026 20:12:10 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C713A4328F6
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Apr 2026 20:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W0lyc/Cvz34lPJKC/jCNwWCp0m/h2zWNgirW2t2FC4k=; b=ZLFW5PsWQqWvILHm9bbhGwtUdn
	ly4cgh2FgD2NNbZ21iYt2YTVLHHt/InVjg8JwUhn7SCLTeQIP04d3GH6t0k27LhxbCxZtZUsNpS/8
	K/eqptorhuA0/MtXGzsBl8OyTH4jWV8Caxkl4dXjHiC3q2S8CePp17IBifrR/rlXCs60=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wEt6F-0006kV-NS;
	Mon, 20 Apr 2026 18:11:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wEt62-0006k5-AM
 for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Apr 2026 18:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NZqklhuDF1k0Dbjjx4jNSxPWDEioxX8SCeAanRedit4=; b=ISUc2NM4Zcp/wAObayNZhVMcBM
 7x2wBe4CQBzdE8nSohPn+u2/bPUicFG/nfbhznHxsmM7V4AZ+uQRdkGYX+EcqDCoEhSuthJ3CvtGv
 Cx7dUAPwtvEqoKgbxVkE15Y5mHIL1cdoMygpNabBpXy7zMRiJjWk/iV3B3Fz0U6ZpUfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NZqklhuDF1k0Dbjjx4jNSxPWDEioxX8SCeAanRedit4=; b=MzTjJBgnEXDe3kb8h/lyeDtuX2
 vMeyMpI6jVX6a0vlJ+fZ1i6G++4uGVwK9nMTIvvbCWACRWm2ueGTeLf8zKvnZKCVhGY4Sjr71GawZ
 E/jory98yxEJtxIOD8mHK/xBK9LUVfPR5e+/ltvFCotzRebTyo+WFoRnbFBxIPNcNh6Q=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wEt5r-0002Ai-5K for openipmi-developer@lists.sourceforge.net;
 Mon, 20 Apr 2026 18:11:36 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-7dbe07d3ec3so1685770a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Apr 2026 11:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776708689; x=1777313489; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
 :reply-to; bh=NZqklhuDF1k0Dbjjx4jNSxPWDEioxX8SCeAanRedit4=;
 b=eeBKp9SPYWw7cQOXm3wRQxZH2fq0+C/PXuRlMJR7w5nxQJqyrUlSKIxtBwb1cD5akL
 ql3hvLvhppwAEIodJdDiiLXMpU99Z8lbMzcJqHD20+KF3C6p7jSJS2CYk2Pum7HP9YVk
 wYIvlBLQEAmgBLVDqZRu43J9/bzQ+CBckVfo6+YKmA0PCee2Xv/9/gphEfnBb/UqZi98
 Kz1ErH54LUMBuUlZgWmneZGDGBujjzbgzsEdhrikmd0t7R0kuRQSOwYSuQoPPqjdBVfy
 HRSXN7MYxMG1RSkA7TAwPILkj8Y/ArdWp6lALnzG/c2Ki4ULBa9NPisiepXYhKNnj8L2
 mhIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776708689; x=1777313489;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=NZqklhuDF1k0Dbjjx4jNSxPWDEioxX8SCeAanRedit4=;
 b=OCDwMx81QqgUXyiNlyUR8dGzoXbt6wurI+X3LofcA70d9JdyIRNpM+3DnMDsXS9od9
 Kahkleko0y+waCZbqCCKFoFID9zo3jUF9KXCWht/fLy+osyEzRR8hVHu53tZqehZ9L+V
 Xl3MMnj7I7o2QYewtuGuPzJRmdkvqnqELoOHWsm3J9+oJgf2EvQCIGEEtdQ4+MMLDuB7
 4LoQtKK2ZSF/A2qoE051ejgPYbwkjEkuM29B9bLhG/xNH89fkdmu3FBuoo/6NJorBU3Q
 An9JtyDZHx0kfw9HUxzChvhizyT4IEzHVB+7quCxZBFwUhAkEncfOIHz8tiU3V3oQPMF
 P/kQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ9jscyGSv4O9vyY+yeAUBsCwcbowYEhUrHaqtfVp+KckYI5RYD4AYgY13cdtA4HUXsb9BFbEPpNu6J61XeopW7HW9U=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz6hB8ZPq/Xo9ObMlabGWCQmojq04wulUfyj5bGyDCCIdAwwYH0
 g6mtydwz6A+LcoihXjEU0y9nXr+bAQR9T7quFucsIOpqP1/5A0di3CqXJNb995BKqus=
X-Gm-Gg: AeBDietkyJ1TrIQSbxf6CL/Migma87R5En890zFiS6xtMQwwuaw9kN0BfqNajtYzWdp
 FPwoVqPnINclseQsw/mP+gHRaA1b/Yv//x4B4nC/+i0cizk7SYvjqsbVGgPnhbBYcJ0YphQ9ttb
 FpwMWcQeTJKRm29AHHgnMWz0Ym+lLWtclOgNDWUvmTGQOuzpKv8DJ4f9zeyWcQH+mYLmcE9a1xP
 673Ys6Yd+ckaOMTlkcW55IoYwtf8LOFODS8rtJ0+f/DCwpY4Sbr7EAbv41v8Rswt0Vswr95Ti8p
 P+bf1+bIpEXSr4qB99BvRsU3gybDm5w/fZsTsyBi/6xiarH3rsMV+7K5mjr4aw/KhIxPuAGe2ca
 BIe7iKpQfoQCFKCs6ezTwycIQdBXXq+TF5sgNHGmgmORHDxcAyZjJcOBtE3UOv9y4i01Tq9Ge6t
 XKeITiewk0HxK24ThQk8feFW0K+LxYXc76qnLWx7KZnbJVmJXTSvgz/2aQeBUTzILZySKS8P9WV
 6/HpWEdCJhEHPwUFgIdLkS/WQ==
X-Received: by 2002:a05:6830:3149:b0:7d9:f50f:968a with SMTP id
 46e09a7af769-7dc951177a9mr8609038a34.5.1776708689404; 
 Mon, 20 Apr 2026 11:11:29 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d47a:597e:1b35:c35f])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7dcc712b4easm2167871a34.23.2026.04.20.11.11.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 11:11:28 -0700 (PDT)
Date: Mon, 20 Apr 2026 13:11:25 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>, Tony Camuso <tcamuso@redhat.com>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kernel-team@cloudflare.com,
 Matt Fleming <mfleming@cloudflare.com>,
 Frederick Lawler <fred@cloudflare.com>
Message-ID: <aeZsTQdBNBzvmNG2@mail.minyard.net>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
 <aeKwa4napKfBerJM@matt-Precision-5490>
 <aeLIE0Psdlvr9l7j@mail.minyard.net>
 <aeUsnI2nHAbtqoqt@matt-Precision-5490>
 <aeZVPUV_gPrgITJQ@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeZVPUV_gPrgITJQ@mail.minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 20, 2026 at 11:33:01AM -0500,
 Corey Minyard wrote:
 > On Sun, Apr 19, 2026 at 09:50:38PM +0100, Matt Fleming wrote: > > On Fri,
 Apr 17, 2026 at 06:53:55PM -0500, Corey Minyard wrote: > > > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wEt5r-0002Ai-5K
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
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:fred@cloudflare.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,minyard.net:replyto,mail.minyard.net:mid]
X-Rspamd-Queue-Id: C713A4328F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 11:33:01AM -0500, Corey Minyard wrote:
> On Sun, Apr 19, 2026 at 09:50:38PM +0100, Matt Fleming wrote:
> > On Fri, Apr 17, 2026 at 06:53:55PM -0500, Corey Minyard wrote:
> > > 
> > > The EVENT_MSG_BUFFER_FULL flag only gets cleared when a unsuccessful
> > > READ_EVENT_MSG_BUFFER command completes.  Getting data from the
> > > BMC has higher priority than sending data to the BMC.
> > > 
> > > If the BMC continually reports success from READ_EVENT_MSG_BUFFER, then
> > > that would certainly wedge the driver.  But it would have to continually
> > > report success for that command, which would be strange as its supposed
> > > to error out when the queue is empty.
> >  
> > That does indeed appear to be what's happening.
> > 
> > The implementation of intel-ipmi-oem's OpenBMC READ_EVENT_MSG_BUFFER
> > handler does not fail when there is nothing to read,
> > 
> >   https://github.com/openbmc/intel-ipmi-oem/blob/master/src/bridgingcommands.cpp#L704
> 
> Actually, that is so clearly wrong that it's hard to imagine they made
> this mistake.  Anyway, a defect needs to be filed against it.  It will
> certainly break other software on other OSes.
> 
> I think I have an easy workaround, though I'm guessing.  I'm guessing
> they are returning zero data bytes. There's no check on the size at that
> point in the code (it's later).
> 
> Can you try the following patch?

Actually ignore that, I was thinking too much about the other stuff and
didn't actually read my patch.

Here's a working patch:

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 4a9e9de4d684..08c208cc64c5 100644
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
+               if (msg->rsp[2] != 0 || msg->rsp_size != 19) {
                        /* Error getting event, probably done. */
                        msg->done(msg);



> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 4a9e9de4d684..cf8674a93af1 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -630,7 +630,13 @@ static void handle_transaction_done(struct smi_info *smi_info)
>                  */
>                 msg = smi_info->curr_msg;
>                 smi_info->curr_msg = NULL;
> -               if (msg->rsp[2] != 0) {
> +               /*
> +                * It appears some BMCs, with no event data, return no
> +                * data in the message and not a 0x80 error as the
> +                * spec says they should.  Shut down processing if
> +                * the data is not the right length.
> +                */
> +               if (msg->rsp[2] != 0 || smi_info->curr_msg->rsp_size != 19) {
>                         /* Error getting event, probably done. */
>                         msg->done(msg);
> 
>  
> With your approval on that, I'll send it to Linus after letting it sit
> in the next tree for a bit.  Actually, I'll probably add it in any case,
> as it's a good check to do.
> 
> > 
> > > If it's really something like that, I could also look at adding limits
> > > for those operations.
> > 
> > That would be great. Me and Fred would be happy to test out any patch.
> > 
> > I still think the original patch I sent is a worthwhile defense.
> > 
> > Our periodic monitoring scripts cause TASK_UNINTERRUPTIBLE tasks to
> > block behind one another when we hit these kinds of issues in the IPMI
> > code. Untangling that across thousands of machines can be time
> > consuming and a more explicit EIO or ETIMEDOUT would help with triage.
> 
> Unfortunately, that might have other issues, similar to the ones the
> people with the watchdog issue found.  I'll look at it a bit, but those
> sorts of things would have to be scattered all over the code, not just
> in that one place.  As you say, it would make debugging easier.
> 
> I think adding a counter to the number of operations occuring from a
> single flag fetch would be a way to avoid this issue.  That's going to
> take a little more time, but I'll definitely work on that.
> 
> Thanks,
> 
> -corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
