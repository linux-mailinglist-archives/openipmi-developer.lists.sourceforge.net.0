Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9800F63D7A
	for <lists+openipmi-developer@lfdr.de>; Tue,  9 Jul 2019 23:46:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hkxwD-00070D-VB; Tue, 09 Jul 2019 21:46:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hkxwC-000706-Fg
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 21:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MYX+bKitIKuhlu8Fk10A4x6cbLxiCn6+G+7FkkYZdXE=; b=K2AaWMTm6dCH++VJ0+jDg+5s7j
 hWwRGe+vhDV/eWGx9SICwxDiTeIdv7AdRBQ+mDBnUDOnzxsL5FrOwUUzbUsEIaDKu87zLdoXRiRlI
 Pa5sHzDgoEd7zvL7EiVtad1IazgyUHzvVOLQbm6JK6P8JfCsxIz+D15QphbKU0pCUGV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MYX+bKitIKuhlu8Fk10A4x6cbLxiCn6+G+7FkkYZdXE=; b=IplOUVmz59yS/BvTzeQRPx/dJK
 8r7fwMiV8OseeA6qE/p3Z+oWFDB1fodEp4vll2rdCZZQZ/12vhHd26tB2VGQBdCSpJBJJwaj+K5PI
 xwLOkumxAjypcsm3ED2zOYSSxhjsO6TX841xI17MpGDPt5wR285ZczgPYgzcPyvyCMjA=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hkxwB-00Cy2b-2t
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jul 2019 21:46:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id q10so6088otk.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 09 Jul 2019 14:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MYX+bKitIKuhlu8Fk10A4x6cbLxiCn6+G+7FkkYZdXE=;
 b=grVm2WAKocF8t+tmT/HihvCR2t3lAwyANm/vTKQtwHLAeF76RNsARgiGzwCP59QOLu
 PaGfbNymbTKDco5C5xg1Vng2+3SgRTxr2dVfLP9VtbcbzCjv8IdRu/ks6lN5+WnRXaKK
 BbWo05mX8glK1+OiwlrlsI0cnjIKa3TtlHoEY/L8mmmFE9BLQ0BAezo7o5GPlvCsTqwZ
 29TMFerSGEKQh+hJgatVzTDIN7UHNomMY2uRYeHUGgl99SqwErY57qp8u1ZlJL6JXXqr
 RccJ94fKzBKPIkAivdiAkd17FIkFYEOx4XUrKUYKnd4imOU+IwKOCaGJlxggSis/qozm
 tpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=MYX+bKitIKuhlu8Fk10A4x6cbLxiCn6+G+7FkkYZdXE=;
 b=PEmDuHfOIHgwHI4gTmia2JhEhJGQEoBKGsddTYOWhxuqouiaHHXVt8QeDneVia+y/q
 bjOObslEGX9ZKLZps/i4lLSOwZyZDUCfNdTVMcmYDHRPEOJA89tnaeqGFRTA+1QLdZRw
 uumjKS0bgVSZQCaaOMcwIiO+XlyGByZcCPWt4oyKTf/JN8DHwxHFeAel0z76l0Fuhrao
 KkBWhWaYIKRWXLWh3WzRbtTOpHn/CvzVG7mY1TT1Fcxzj4EW+KLCM664d30iHQ9OvPU7
 3qIIIHqEifRdPgnBaZIH0CS6UJKAQEFc8lydlDdEKpyhhDbQszubl/PJkklc8JWMc8D5
 3Jlw==
X-Gm-Message-State: APjAAAWV02kt4hIU6kbPaElE4D0qXGO5Oxh2Oop7P7LTudrNNUQWVZ37
 lhHqlH4t/b4sdZzflU+rkQ==
X-Google-Smtp-Source: APXvYqzCdHFAKERg88yoYs2ZV/Vft2Jyh4mrZ1K3HM3dLPrEuiGyLvxGpSX8zPOMSRpPSLk1Nap9lw==
X-Received: by 2002:a9d:6853:: with SMTP id c19mr20299107oto.213.1562708765032; 
 Tue, 09 Jul 2019 14:46:05 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id l5sm124032otf.53.2019.07.09.14.46.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 14:46:04 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6c89:b9b3:d6b4:3203])
 by serve.minyard.net (Postfix) with ESMTPSA id 179C81805A4;
 Tue,  9 Jul 2019 21:46:04 +0000 (UTC)
Date: Tue, 9 Jul 2019 16:46:02 -0500
From: Corey Minyard <minyard@acm.org>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20190709214602.GD19430@minyard.net>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
X-Headers-End: 1hkxwB-00Cy2b-2t
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si_intf: use usleep_range()
 instead of busy looping
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 09, 2019 at 02:06:43PM -0700, Tejun Heo wrote:
> ipmi_thread() uses back-to-back schedule() to poll for command
> completion which, on some machines, can push up CPU consumption and
> heavily tax the scheduler locks leading to noticeable overall
> performance degradation.
> 
> This patch replaces schedule() with usleep_range(100, 200).  This
> allows the sensor readings to finish resonably fast and the cpu
> consumption of the kthread is kept under several percents of a core.

The IPMI thread was not really designed for sensor reading, it was
designed so that firmware updates would happen in a reasonable time
on systems without an interrupt on the IPMI interface.  This change
will degrade performance for that function.  IIRC correctly the
people who did the patch tried this and it slowed things down too
much.

I'm also a little confused because the CPU in question shouldn't
be doing anything else if the schedule() immediately returns here,
so it's not wasting CPU that could be used on another process.  Or
is it lock contention that is causing an issue on other CPUs?

IMHO, this whole thing is stupid; if you design hardware with
stupid interfaces (byte at a time, no interrupts) you should
expect to get bad performance.  But I can't control what the
hardware vendors do.  This whole thing is a carefully tuned
compromise.

So I can't really take this as-is.

-corey

> 
> Signed-off-by: Tejun Heo <tj@kernel.org>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index f124a2d2bb9f..2143e3c10623 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1010,7 +1010,7 @@ static int ipmi_thread(void *data)
>  		if (smi_result == SI_SM_CALL_WITHOUT_DELAY)
>  			; /* do nothing */
>  		else if (smi_result == SI_SM_CALL_WITH_DELAY && busy_wait)
> -			schedule();
> +			usleep_range(100, 200);
>  		else if (smi_result == SI_SM_IDLE) {
>  			if (atomic_read(&smi_info->need_watch)) {
>  				schedule_timeout_interruptible(100);


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
