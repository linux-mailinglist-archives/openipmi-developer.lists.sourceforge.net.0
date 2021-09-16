Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA6E40E1A4
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Sep 2021 18:40:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mQuQZ-00062F-LX; Thu, 16 Sep 2021 16:39:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1mQuQY-000628-By
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Sep 2021 16:39:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qy3pOAsrra7KT/ngtb/QFh7afi84SrbV2cOHQJxGstg=; b=Geg4z2Pf63X7gSLV+i4zt6kb9A
 PPAePaVGYhHnoeLSm1FBcvqNqTtMtZLj4ZB3IYWq+QEYvn1nQAdHdstod3j7ZtfKLYDZEcRIDx4mv
 zO74rZLquDsfEAb4u3+wMhUmObV7JmFskTxeXeZzOie7gCa+3G8dXpGoA8z/J95CWVGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qy3pOAsrra7KT/ngtb/QFh7afi84SrbV2cOHQJxGstg=; b=jeyV+50mPGRGqQHhB1lcaNYY6H
 Puo3dRiTz6dyQhnZ59CS37w/H838wiogo6h68YEKNszSuM+xBqwYqeExzpcIVwwk6s95NUQK0FVaT
 t6myWW2h3blXUs4MxvVmiGYpyF1aVwnfUnyxP/Pmgg4VLIMu4pS9JjroJBh2C7FJD4xU=;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mQuQU-0001rY-BD
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Sep 2021 16:39:58 +0000
Received: by mail-oi1-f170.google.com with SMTP id s69so2323807oie.13
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 16 Sep 2021 09:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qy3pOAsrra7KT/ngtb/QFh7afi84SrbV2cOHQJxGstg=;
 b=h/Wj+RXf+luqlt8A5CP0bsUtHT8NqxT8VRlOcVq2tdjCMr//bVYG9NOA6uTE31YvMC
 zoWi3PWFnfgwnzpUo0BzuU1DK45wZIOd/RCxSfOKeGMD8N8zMAWhns0zeb3QZL6RKoK9
 maRg9jM+f+Dil7H/ctPWb9jixsB8SFilbC+sNZBZ04J+z1R6jc3YGyET/sTSWvIye9RW
 7cgyhLeiCxJhI0dl5CLxCNeXLJjBdSppPHSnvc9+AQIpTUur+6C5AOngB392efXib13S
 IqxAb/GFwW1vBxRCtozEmtcqPhuSrJkKl1U1D3m7IzItHroVQ4dS4DZlPOwprnhhTGd+
 M5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Qy3pOAsrra7KT/ngtb/QFh7afi84SrbV2cOHQJxGstg=;
 b=H2m8XR5zLYl+sIveMf0I4FNdwP68wjomlxbRYBC8Gc+eQ8QKm4OQatJJxNRQ3koLjz
 xTUtmWd6cg7DyiK9lz1hU6AmClSdMWkEUhvOIRpve2SXLXfY/XsOm7nrmkacPetijyfn
 8ogEqGWHL+kowiedn7IkpwJi4MLpnCEdkr216gcV8J0X4Ul/1VDiwoczkP2YxQfwqAGE
 nB44BdStqSKgUkHLBzupvZuD5Wmbp2UfqxYGaHgrJrzo+et4qItUUTiqlrNmpZwUXFvJ
 K4GRFYDQmy8Dr76aYmA8pAwPZqvEO2EkJZBHKZCVUxUNsoMff9hiRjWwTOh6akFKXZw3
 RCIA==
X-Gm-Message-State: AOAM533nlZpsUkqcxcqBgdeFpsV6dmNItWm06igLWgB3w5Y/escIb1OH
 ToboXNAoNU8V73U3cShfkcf3ZZMpLg==
X-Google-Smtp-Source: ABdhPJzwncS5iHvX5bxcRrpNe4012zEgfmItpvnAJ4Oo6PfiPrtFGz2pH3WTJzW1phlYCbyJq+Nghg==
X-Received: by 2002:aca:2b05:: with SMTP id i5mr552713oik.55.1631810388587;
 Thu, 16 Sep 2021 09:39:48 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id a11sm803798oiw.36.2021.09.16.09.39.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 09:39:47 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1df5:faca:2d59:6c4c])
 by serve.minyard.net (Postfix) with ESMTPSA id 496E918000C;
 Thu, 16 Sep 2021 16:39:46 +0000 (UTC)
Date: Thu, 16 Sep 2021 11:39:45 -0500
From: Corey Minyard <minyard@acm.org>
To: Anton Lundin <glance@acc.umu.se>
Message-ID: <20210916163945.GY545073@minyard.net>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916145300.GD108031@montezuma.acc.umu.se>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 16, 2021 at 04:53:00PM +0200, Anton Lundin wrote:
 > Hi. > > I've just done a upgrade of the kernel we're using in a product
 from > 4.19 to 5.10 and I noted a issue. > > It started that wit [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.170 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.170 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mQuQU-0001rY-BD
Subject: Re: [Openipmi-developer] Issue with panic handling and ipmi
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Sep 16, 2021 at 04:53:00PM +0200, Anton Lundin wrote:
> Hi.
> 
> I've just done a upgrade of the kernel we're using in a product from
> 4.19 to 5.10 and I noted a issue.
> 
> It started that with that we didn't get panic and oops dumps in our erst
> backed pstore, and when debugging that I noted that the reboot on panic
> timer didn't work either.
> 
> I've bisected it down to 2033f6858970 ("ipmi: Free receive messages when
> in an oops").

Hmm.  Unfortunately removing that will break other things.  Can you try
the following patch?  It's a good idea, in general, to do as little as
possible in the panic path, this should cover a multitude of issues.

Thanks for the report.

-corey

> 
> I tested just reverting that and both dumps to pstore and the panic
> reboot timer started working again.
> 
> 
> //Anton

commit e28aa211190b7d3a1135f051f0c30b0195016489
Author: Corey Minyard <cminyard@mvista.com>
Date:   Thu Sep 16 11:36:20 2021 -0500

    ipmi: Disable some operations during a panic

    Don't do kfree or other risky things when oops_in_progress is set.

    Reported-by: Anton Lundin <glance@acc.umu.se>
    Fixes: 2033f6858970 ("ipmi: Free receive messages when > in an oops")
    Signed-off-by: Corey Minyard <cminyard@mvista.com>

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e96cb5c4f97a..a08f53f208bf 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4789,7 +4789,9 @@ static atomic_t recv_msg_inuse_count = ATOMIC_INIT(0);
 static void free_smi_msg(struct ipmi_smi_msg *msg)
 {
 	atomic_dec(&smi_msg_inuse_count);
-	kfree(msg);
+	/* Try to keep as much stuff out of the panic path as possible. */
+	if (!oops_in_progress)
+		kfree(msg);
 }

 struct ipmi_smi_msg *ipmi_alloc_smi_msg(void)
@@ -4808,7 +4810,9 @@ EXPORT_SYMBOL(ipmi_alloc_smi_msg);
 static void free_recv_msg(struct ipmi_recv_msg *msg)
 {
 	atomic_dec(&recv_msg_inuse_count);
-	kfree(msg);
+	/* Try to keep as much stuff out of the panic path as possible. */
+	if (!oops_in_progress)
+		kfree(msg);
 }

 static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void)
@@ -4826,7 +4830,7 @@ static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void)

 void ipmi_free_recv_msg(struct ipmi_recv_msg *msg)
 {
-	if (msg->user)
+	if (msg->user && !oops_in_progress)
 		kref_put(&msg->user->refcount, free_user);
 	msg->done(msg);
 }



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
