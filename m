Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D02B69C038
	for <lists+openipmi-developer@lfdr.de>; Sat, 24 Aug 2019 22:51:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i1d0F-0000g5-OV; Sat, 24 Aug 2019 20:51:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i1d0D-0000ft-JT
 for openipmi-developer@lists.sourceforge.net; Sat, 24 Aug 2019 20:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+jvXcB32u37L1rKABHrIjYMrHm6miJoN7sKZxqjMMSM=; b=PqQjtQE7hg/poeq+4lHt9hfMHZ
 E/xrldqlit4zJvX01JM2CE9ot5iESWGC0jC7E8afm/0W1L9iAPvvLTjpfybs1ypv9gJ/d9TY9fIHA
 2etAYnbS/iw8OZUQ949UXWvfjcqeAn9kzilJsJ73IFYxV8dMuVKi9yRzXhhDbJdAMsX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+jvXcB32u37L1rKABHrIjYMrHm6miJoN7sKZxqjMMSM=; b=WeSonk6EBzRXyVt2NbydFfGdMB
 wbAm7Qbs+jylhn20eGf6F9jvUbwVOXgfnKPNcVUaawuRPPuL3OnrSrjE8VYWftvQW5s/5OrxzrUge
 HXcK6vXgZxh3TcEmszJy6askFvULitkP4qwD/Q6WSh+8bnBT2633qUvVYw2vSNgJuH9E=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i1d08-001DFm-GO
 for openipmi-developer@lists.sourceforge.net; Sat, 24 Aug 2019 20:51:13 +0000
Received: by mail-ot1-f67.google.com with SMTP id w4so11823677ote.11
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 24 Aug 2019 13:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+jvXcB32u37L1rKABHrIjYMrHm6miJoN7sKZxqjMMSM=;
 b=UFOILBCJda5lT3hPiG6V+UiOWHgFuNyCJTdsDUZUI5XcsDyJTvM9zif5ECvCcPVBe/
 r++hwjjxG1sBoXAy/PULXQ1oJjaWMK9nsiEqa0l4ln3Mo6IaZ6GoVdOQ6fbCI5yH7JUv
 pZQ3FNPAMKFCIHoXPX46qQkwlW+fUoHu2LFPH1jHGWoC0v0yOkpQ8s7ivDmTSdH/A2do
 NEIIkd+7tyso3JuUqX8eVWqhE8wNCiz3c1c21jGqRkoDi3K7Bb7L1WoeuwcyISqI6jUC
 3wmjB6dmZs/ef9OmWMzQ34Kmp+0IwFLfSEugP0upk8uQdHpFmztXbmktXJwjKF/AqcBM
 NlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=+jvXcB32u37L1rKABHrIjYMrHm6miJoN7sKZxqjMMSM=;
 b=cbJLtm8iTcdJNH9oXTB/mjVxoaN1JIealn1uaq1Pgd8cYmO4xwgj35UiVhQmurTKa+
 YyLeh1JPtNCoxSZNUaqsa89GxnHpyA0pNkKBwGzreRUeKCp7C+eRikRxmAUbnSGuouDT
 FS4WIeBNnpdZUMsJx3+exTGMcIydMMrZB56YA5Hl7lHYJffU52NVnC8edscclYjVzd6j
 RtyMelvZpqcJaG0gr/J+KtB1dfKlZaNRVNAGMGARAtdb4XZTcVhflaocCE7pszl+JrvX
 wxyxcmNayluqFehS2GXauWn8Sf/pjrT3Jh3BStuPRhHYNgPmKxRrMdikazLb8LATlKb8
 y0jA==
X-Gm-Message-State: APjAAAVBum1vSr3nEtwIrA+UdiVf3XbTPpuhlt7NweEJkBHkXjpw4wub
 mJBKhWLYH7XPBwisRffy/w==
X-Google-Smtp-Source: APXvYqyWRo56OChknw38Sq0FxucUOJeDqSyzDRF8wLkOxp9aYCjbZFKdTNXHPFYHcr/db9nlJ9+lYg==
X-Received: by 2002:a9d:4703:: with SMTP id a3mr9607336otf.183.1566679862520; 
 Sat, 24 Aug 2019 13:51:02 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id l16sm2251124otq.42.2019.08.24.13.51.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 13:51:02 -0700 (PDT)
Received: from minyard.net (t430m.minyard.net [192.168.27.3])
 by serve.minyard.net (Postfix) with ESMTPSA id 6A2E5180039;
 Sat, 24 Aug 2019 20:51:01 +0000 (UTC)
Date: Sat, 24 Aug 2019 15:51:00 -0500
From: Corey Minyard <minyard@acm.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20190824205059.GB14083@minyard.net>
References: <20190824145147.GB5337@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824145147.GB5337@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
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
X-Headers-End: 1i1d08-001DFm-GO
Subject: Re: [Openipmi-developer] [PATCH] ipmi_ssif: Fix locking on probe
 error path
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kamlakant Patel <kamlakantp@marvell.com>, kernel-janitors@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Aug 24, 2019 at 05:51:47PM +0300, Dan Carpenter wrote:
> If the allocations failed then we returned with the lock held.  This
> patch moves the allocations infront of the locking.

This had already been fixed, but thanks for the heads up.

-corey

> 
> Fixes: 714acbc6cc39 ("ipmi_ssif: avoid registering duplicate ssif interface")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 205726926bd3..9cf2efd33f19 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1683,7 +1683,6 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  	u8		  slave_addr = 0;
>  	struct ssif_addr_info *addr_info = NULL;
>  
> -	mutex_lock(&ssif_infos_mutex);
>  	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
>  	if (!resp)
>  		return -ENOMEM;
> @@ -1694,6 +1693,8 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  		return -ENOMEM;
>  	}
>  
> +	mutex_lock(&ssif_infos_mutex);
> +
>  	if (!check_acpi(ssif_info, &client->dev)) {
>  		addr_info = ssif_info_find(client->addr, client->adapter->name,
>  					   true);
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
