Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F03B5260762
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Sep 2020 02:03:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kFR6u-0004lN-Jr; Tue, 08 Sep 2020 00:03:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kFR6s-0004lF-Lm
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Sep 2020 00:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L8oNMgR3V486OSRxon6NQEkiONwS5O4dd9QWGg4Xngc=; b=CiEXhHNpoiMBq4piZcsSMl/qMd
 CbKHDkVoEFoXO5tA99JLqmuuEwxPEkq0apAX+Ep3sB2fINdUIjetD9YtVH62eJv3342dBK/QYDnVg
 faVrKiiRjjW44x5fgwDfokBYgKc3srYyxfEdT4OeWu4UGXmrM6lGWFj4WbrcO5A+tY5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L8oNMgR3V486OSRxon6NQEkiONwS5O4dd9QWGg4Xngc=; b=NY0OuNRxd8kCQuMHjqH7Ow++yc
 YSYIma0KRZLZkBrTLgpYHVZDoitFKBHviuCAMBbVDWbdElZ9iOelRESqB6/y9HIHGLePRjlruiwkJ
 mWW9IGdDcIES747jzmg7pcpeFRrk/tOy125URGXVaafs9U+X7GiU95I5a9hTzdVOaInQ=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kFR6l-00GIcN-R3
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Sep 2020 00:03:42 +0000
Received: by mail-ot1-f65.google.com with SMTP id g10so13406358otq.9
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 07 Sep 2020 17:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L8oNMgR3V486OSRxon6NQEkiONwS5O4dd9QWGg4Xngc=;
 b=YkrDh/elvp6AlfWLCCw41Cv611AXJ0pzoGq0h2OjJgSu7mW0RuIgIVq6z95Nwih60M
 A6fnnBhd92YqOAzaTDKqS+GYrNwXvB5VfmeBlOEhmNWVkR05jkeO4mQZU9y/UE56nLst
 0L49/h4RwACTfVWL35h9PJTCB0J9e35905HdScsCW/wBqiQFsJeV7lEsrtdJo7ZGioJd
 obARRG4eFocg1zhdKlmkwkBIhrVvJfcGXLpaD1kg2cWA0S06WALmdka6VqDE0+t5GMsj
 cQwuzYNC5fJc2GNihar2g7I0AQoaFAE/OS7lS3k03EWj4RKMykZBM44ilb8g1+/Uki4I
 ITmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=L8oNMgR3V486OSRxon6NQEkiONwS5O4dd9QWGg4Xngc=;
 b=uKntku3X/nmvXR9AIYZ04oLiMAYefAr5Xf233J66axmY4XImW2V9HEB00koa5GHD4M
 xdGbQDyoPFlxZ/3yqHmbXjXVdRcRxLfBVjxf1lpV/0PMguq2L+iTb7dYn5l4InPmat49
 3jwxlGO2BlkHhEWNN7LugyRfYAE8N/oCfi1948c+561aYOCJbYZZqS836bV4MKEEsDVv
 Ss4WdgWjfzFop+o5lIBytGHtgLdR/vNGReUAxjonD1idIc1xe7Z51on747h+WHVlyywP
 JChoSFZCjGcAb1Te8LvkueSwnqBMLBGVKd/pa0435oaXFVbqU5KH/9ivq6EShwstcLSf
 YM/Q==
X-Gm-Message-State: AOAM531DtPHa2WMnRZkIVMDPWIxE2RtPkzdUAQt3Oj1snUzAgWIFURn2
 d6KAgx3j9D/GhGhGsNmT1A==
X-Google-Smtp-Source: ABdhPJx4xHUKZjAD0PXmb/o0pO/ou6m/g3Z/JN1DNQVsf5+MuZdVc/v6st5nCRnQuvMzYbhOogpweA==
X-Received: by 2002:a9d:69c9:: with SMTP id v9mr15168348oto.90.1599523410109; 
 Mon, 07 Sep 2020 17:03:30 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 91sm3291127otn.18.2020.09.07.17.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 17:03:29 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:84ed:77c1:d49f:5e6b])
 by serve.minyard.net (Postfix) with ESMTPSA id E63F818003B;
 Tue,  8 Sep 2020 00:03:27 +0000 (UTC)
Date: Mon, 7 Sep 2020 19:03:26 -0500
From: Corey Minyard <minyard@acm.org>
To: Markus Boehme <markubo@amazon.com>
Message-ID: <20200908000326.GB15602@minyard.net>
References: <1599495937-10654-1-git-send-email-markubo@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1599495937-10654-1-git-send-email-markubo@amazon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kFR6l-00GIcN-R3
Subject: Re: [Openipmi-developer] [PATCH 1/3] ipmi: Reset response handler
 when failing to send the command
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
Cc: Stefan Nuernberger <snu@amazon.com>, SeongJae Park <sjpark@amazon.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Amit Shah <aams@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 07, 2020 at 06:25:35PM +0200, Markus Boehme wrote:
> When failing to send a command we don't expect a response. Clear the
> `null_user_handler` like is done in the success path.

This is correct.  I guess, from the next two patches, I know how you
found this.

I can incude this, but I will ask some questions in the later patches.

-corey

> 
> Signed-off-by: Markus Boehme <markubo@amazon.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6..2b213c9 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2433,7 +2433,7 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  
>  	rv = send_get_device_id_cmd(intf);
>  	if (rv)
> -		return rv;
> +		goto out_reset_handler;
>  
>  	wait_event(intf->waitq, bmc->dyn_id_set != 2);
>  
> @@ -2443,6 +2443,7 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  	/* dyn_id_set makes the id data available. */
>  	smp_rmb();
>  
> +out_reset_handler:
>  	intf->null_user_handler = NULL;
>  
>  	return rv;
> @@ -3329,6 +3330,7 @@ static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
>  			dev_warn(intf->si_dev,
>  				 "Error sending channel information for channel 0, %d\n",
>  				 rv);
> +			intf->null_user_handler = NULL;
>  			return -EIO;
>  		}
>  
> -- 
> 2.7.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
