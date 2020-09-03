Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D74D25C987
	for <lists+openipmi-developer@lfdr.de>; Thu,  3 Sep 2020 21:31:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kDuxK-0005AR-1D; Thu, 03 Sep 2020 19:31:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kDuxI-0005AD-0g
 for openipmi-developer@lists.sourceforge.net; Thu, 03 Sep 2020 19:31:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Ds0pilk2n31SUh/VCS796KjocXgyLpE6TMUOjrCscU=; b=eu9yS79xB0VUmc++96JSrfiNp7
 KTQxwJd6AaEXM1Qwh+zZf5tBN8BAyjxdsfEif0xpIjRBg1Ba7j4SsCflXuTaRJZjKqYGEcxr0Ld92
 jKzee2q+qV0wEI84J8qzEDonAU8VfQ0wJhE4u5CfDB+Swg5rfe4BjwpsaFXhUvMZyiNA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4Ds0pilk2n31SUh/VCS796KjocXgyLpE6TMUOjrCscU=; b=SD1eo1+WxyYZfzT5gQ/R1AgQ/s
 HtL26dfLj8FL4kKTltaKoffu0qlSOXW8ITCHtNy2T28KwDTyUViTqM9ghEbnXzidBlL3MtFPLp9zF
 t10tMKYDPsyUpd2B3LYqkzsVPrpo5RzUkrpdFZFUVfqIt3dQj6o6nKJ3RUOuZjdJYBq4=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kDuxC-00AwPp-UJ
 for openipmi-developer@lists.sourceforge.net; Thu, 03 Sep 2020 19:31:31 +0000
Received: by mail-ot1-f66.google.com with SMTP id a65so3772053otc.8
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 03 Sep 2020 12:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4Ds0pilk2n31SUh/VCS796KjocXgyLpE6TMUOjrCscU=;
 b=TpkcLkR9Qruqr4xs1c0PrDQ7676Xb3Wl53/ahnz5w7QRAdJFlXpw2Aj8G3YRdRwxl9
 hBqiouvnei8/WdSqGsNnPpbfNydTgjyquu/9XfJVo/+15aPlnr7Eml47q8Jd/rPbQvPx
 HTHR59kwmmxC+R2N0++fYvUzVg/hTwnm34sBjG2rbK9WrphlXkQa99/BCwzRJ1gTAXVc
 jfxr3ZW90RELQZqB/MqA/RlzpmprYrTgMzTNJiIo0O7SM1Vd5Bo1+7YCF1yHAVU+H9QO
 MYR7C5ngsDNzgKhBz0j7NUSV2e1i9vxFdaXbUDhYcEl4EUq/Aeyx1zbXd9xoGMMt4q2B
 X6KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=4Ds0pilk2n31SUh/VCS796KjocXgyLpE6TMUOjrCscU=;
 b=ftO/DN6HObrW1nymZn3BOczOp/QfGXk9qsKU92wT/9o7CkrsZPdDf0ZcPZt0bbLfdN
 aBFGDd99eVps25HHw4vsMQ16noW/Y3ONUqSkTDRrJ3l05Z0DCYu/yGQV17gWrmXP9aX3
 EmBhjKHF+KXDjPP4QKKmaywBO7PMLiOkjKUzstthiLKPzD+qBObumi//CV23XL16HoMF
 dTmdleqoW0cCXAmzkmm/NA2tqVW5BGE4tpqivOjdLm/WpgIRbxjbiTugMM8iaR3jDxxp
 mJN1kAJBtACTwQHi6lJEsYGzvi5IvIlelrG/SI/VqjexZtYhT6j7CUWbhEX9jdNmW0vu
 n9WQ==
X-Gm-Message-State: AOAM530HxtMQblJ8mvhQJb1acPVFWuDBYHkjWOEbkQ++jAPFYQqJEOyT
 Hnc91zXilEC6NRCW5p6P1w==
X-Google-Smtp-Source: ABdhPJywx4DlgNOa/Cwh/x7itIYS9v0uWkuKmO5dKMUZ9w3eN7WeYAa/xfu8jMeZ+Kf49+3MKyK+rA==
X-Received: by 2002:a9d:429:: with SMTP id 38mr2673005otc.88.1599161481252;
 Thu, 03 Sep 2020 12:31:21 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id i23sm676586oii.53.2020.09.03.12.31.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Sep 2020 12:31:20 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:a442:8186:b629:4877])
 by serve.minyard.net (Postfix) with ESMTPSA id E68A1180056;
 Thu,  3 Sep 2020 19:31:18 +0000 (UTC)
Date: Thu, 3 Sep 2020 14:31:17 -0500
From: Corey Minyard <minyard@acm.org>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <20200903193117.GB4442@minyard.net>
References: <1599130873-2402-1-git-send-email-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1599130873-2402-1-git-send-email-wangxiongfeng2@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kDuxC-00AwPp-UJ
Subject: Re: [Openipmi-developer] [PATCH] ipmi: add a newline when printing
 parameter 'panic_op' by sysfs
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Sep 03, 2020 at 07:01:13PM +0800, Xiongfeng Wang wrote:
> When I cat ipmi_msghandler parameter 'panic_op' by sysfs, it displays as
> follows. It's better to add a newline for easy reading.
> 
> root@(none):/# cat /sys/module/ipmi_msghandler/parameters/panic_op
> noneroot@(none):/#

Thanks, it's in my for-next queue.

-corey

> 
> Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6..6ebb549 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -89,19 +89,19 @@ static int panic_op_read_handler(char *buffer, const struct kernel_param *kp)
>  {
>  	switch (ipmi_send_panic_event) {
>  	case IPMI_SEND_PANIC_EVENT_NONE:
> -		strcpy(buffer, "none");
> +		strcpy(buffer, "none\n");
>  		break;
>  
>  	case IPMI_SEND_PANIC_EVENT:
> -		strcpy(buffer, "event");
> +		strcpy(buffer, "event\n");
>  		break;
>  
>  	case IPMI_SEND_PANIC_EVENT_STRING:
> -		strcpy(buffer, "string");
> +		strcpy(buffer, "string\n");
>  		break;
>  
>  	default:
> -		strcpy(buffer, "???");
> +		strcpy(buffer, "???\n");
>  		break;
>  	}
>  
> -- 
> 1.7.12.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
