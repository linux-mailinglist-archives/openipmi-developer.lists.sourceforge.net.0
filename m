Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B49C40F73C
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Sep 2021 14:08:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mRCf7-0001cQ-5o; Fri, 17 Sep 2021 12:08:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mRCf5-0001cK-Du
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 12:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mo3MsrLCcjToOoLfdaQWqfyZQZEDPCzIEFNbjqcQs+Q=; b=ax7FMHoJUMu4doC7AAzuoNE8rp
 KVHam7CZy2VZagSY+NTkzE5UNw5VuZaEbQjLeNOqA319he+Lr8YTpadN1MKuxZAcZSCyVqaERQ/1D
 +TDhXO0VOGrkEVvhAgaiSp9WRRa26NqAE+OiQSaj30XjnGwRvdaQFmL02PM7Au1OhIdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mo3MsrLCcjToOoLfdaQWqfyZQZEDPCzIEFNbjqcQs+Q=; b=GNm+RXwtpAev0w3qD3i5E2MwnH
 Db4ONbg+K0u/MDcek8ckXCUpraUDi7l4Qwl/9XrvewYoaIrqa5IKo2wO/2L2FHTjnbTL6Zw2Ciyj4
 9dQnO7bd71Fqig97XpWwLxogOMGYoJ25FRRVJXKwyBimb/9J52LQB+tdXigqihKH+htM=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mRCf1-00Dl9Z-7s
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Sep 2021 12:08:11 +0000
Received: by mail-oi1-f179.google.com with SMTP id u22so5413509oie.5
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Sep 2021 05:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Mo3MsrLCcjToOoLfdaQWqfyZQZEDPCzIEFNbjqcQs+Q=;
 b=mjUagJvbPFE45FZHD4ly0abxpm6/5TRIhDk4onLcHETeRwsI3xUCap/4QlUr7JECVF
 lR38Eh7I84nDyANaGgmoxoAqolr6T/Zrd3HyKPYk3sOoQ+3X8zw1ZRDNmVGLtI44VGpL
 NR5aLy1DdBDh50Q0TVGEVqROsNy29MbSHEtfp4igqXWTzO6ItJLG5iBmp8RBMQ4gt452
 NfOEn9CtA5GK3YA24ndIgatLdzQxzLNK9RjdoSgrwvM34/9ZO0c3n3tFXgdWLsSfM+y0
 UItu4zDzOhkZFgzDwMlJxYcaWiTAlUyv9V7neysA/E2VeWfxl+ae+aHRd38oho9dEFdW
 A4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Mo3MsrLCcjToOoLfdaQWqfyZQZEDPCzIEFNbjqcQs+Q=;
 b=Jo8BNoyA5ociYMNFnTJ2PPCjZGP5C3FMylC5nLE73+OcXLnpFq8MbqYxyZ7L/oZWn6
 XYmVfrx6TpeQ6PukJx/+lI8RzD31/0WP8cWCZfkGMTfE4/N3ME93CjbN+y4inBbgLljn
 uvf5tzgDdvD1G37uEWfFZszxuN8g4k8XQRKXM6iF6miJvmPdPhXcJNLvUV8iQllK3UJd
 Z7ldbtWO3a6XdSjQJp24TS8h475a7XQOr1oTAqI0XV3CRzDLFHQZH0CXdq14UV5p6uOE
 QUGrXrLfYlOmeXyasQon++C8l6mR5o+woY3rZAFGU9jOI8uCIdZKn/Q4CPMonCklaCnQ
 ribA==
X-Gm-Message-State: AOAM532RURmqPxrrKVQelLFDb/2xP5E1+lo/h3KTI3sgHVlegIu6SjWG
 3iw5Z8ptHN0MPX55VcdOXxXvVZlpQg==
X-Google-Smtp-Source: ABdhPJwoP4LpTWp+dj4c7VONoQhqJgCtQvn4f4dFLcA4kW/jHmmpvKW8XomK7yn8LZK/P+GoTOvJHg==
X-Received: by 2002:a05:6808:95:: with SMTP id
 s21mr3881492oic.80.1631880481515; 
 Fri, 17 Sep 2021 05:08:01 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k23sm1401001ood.12.2021.09.17.05.08.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:08:00 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2dd4:10f2:4a03:3baa])
 by serve.minyard.net (Postfix) with ESMTPSA id 5C54B18000C;
 Fri, 17 Sep 2021 12:07:59 +0000 (UTC)
Date: Fri, 17 Sep 2021 07:07:58 -0500
From: Corey Minyard <minyard@acm.org>
To: Anton Lundin <glance@acc.umu.se>
Message-ID: <20210917120758.GA545073@minyard.net>
References: <20210916145300.GD108031@montezuma.acc.umu.se>
 <20210916163945.GY545073@minyard.net>
 <20210917101419.GE108031@montezuma.acc.umu.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917101419.GE108031@montezuma.acc.umu.se>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 17, 2021 at 12:14:19PM +0200, Anton Lundin wrote:
 > On 16 September, 2021 - Corey Minyard wrote: > > > On Thu, Sep 16, 2021
 at 04:53:00PM +0200, Anton Lundin wrote: > > > Hi. > > > > > > I [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mRCf1-00Dl9Z-7s
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

On Fri, Sep 17, 2021 at 12:14:19PM +0200, Anton Lundin wrote:
> On 16 September, 2021 - Corey Minyard wrote:
> 
> > On Thu, Sep 16, 2021 at 04:53:00PM +0200, Anton Lundin wrote:
> > > Hi.
> > > 
> > > I've just done a upgrade of the kernel we're using in a product from
> > > 4.19 to 5.10 and I noted a issue.
> > > 
> > > It started that with that we didn't get panic and oops dumps in our erst
> > > backed pstore, and when debugging that I noted that the reboot on panic
> > > timer didn't work either.
> > > 
> > > I've bisected it down to 2033f6858970 ("ipmi: Free receive messages when
> > > in an oops").
> > 
> > Hmm.  Unfortunately removing that will break other things.  Can you try
> > the following patch?  It's a good idea, in general, to do as little as
> > possible in the panic path, this should cover a multitude of issues.
> > 
> > Thanks for the report.
> > 
> 
> I'm sorry to report that the patch didn't solve the issue, and the
> machine locked up in the panic path as before.

I missed something.  Can you try the following?  If this doesn't work,
I'm going to have to figure out how to reproduce this.

Thanks,

-corey

commit f253c87772b65e2a5971e82dc81ee63d6e9848cf
Author: Corey Minyard <cminyard@mvista.com>
Date:   Thu Sep 16 11:36:20 2021 -0500

    ipmi: Disable some operations during a panic

    Don't do kfree or other risky things when oops_in_progress is set.

    Reported-by: Anton Lundin <glance@acc.umu.se>
    Fixes: 2033f6858970 ("ipmi: Free receive messages when in an oops")
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
diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index e4ff3b50de7f..7f71471c7a46 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -342,13 +342,17 @@ static atomic_t msg_tofree = ATOMIC_INIT(0);
 static DECLARE_COMPLETION(msg_wait);
 static void msg_free_smi(struct ipmi_smi_msg *msg)
 {
-	if (atomic_dec_and_test(&msg_tofree))
-		complete(&msg_wait);
+	if (atomic_dec_and_test(&msg_tofree)) {
+		if (!oops_in_progress)
+			complete(&msg_wait);
+	}
 }
 static void msg_free_recv(struct ipmi_recv_msg *msg)
 {
-	if (atomic_dec_and_test(&msg_tofree))
-		complete(&msg_wait);
+	if (atomic_dec_and_test(&msg_tofree)) {
+		if (!oops_in_progress)
+			complete(&msg_wait);
+	}
 }
 static struct ipmi_smi_msg smi_msg = {
 	.done = msg_free_smi
@@ -434,8 +438,10 @@ static int _ipmi_set_timeout(int do_heartbeat)
 	rv = __ipmi_set_timeout(&smi_msg,
 				&recv_msg,
 				&send_heartbeat_now);
-	if (rv)
+	if (rv) {
+		atomic_set(&msg_tofree, 0);
 		return rv;
+	}

 	wait_for_completion(&msg_wait);

@@ -580,6 +586,7 @@ static int __ipmi_heartbeat(void)
 				      &recv_msg,
 				      1);
 	if (rv) {
+		atomic_set(&msg_tofree, 0);
 		pr_warn("heartbeat send failure: %d\n", rv);
 		return rv;
 	}



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
