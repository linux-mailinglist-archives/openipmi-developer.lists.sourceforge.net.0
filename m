Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 633A21CFD2F
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 May 2020 20:25:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jYZas-0006x3-Cp; Tue, 12 May 2020 18:25:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jYZaq-0006wv-BP
 for openipmi-developer@lists.sourceforge.net; Tue, 12 May 2020 18:25:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aRj33LryoK4NVw/cU+uGnOCPpYy9kXB0xL4YJW/+HOI=; b=ENeqkqBs/2HqKTJA0z6zCS6tqH
 nGtDC7ZQT9wlyIpilxpEDB982OSBZbNmNajV8U8gqAe8N7RBp/bjoVKRJIZg+I/Au6gbORx9Fc2x0
 7r462770DWfyMQ0u3c2gjiLsIxfJSssb448WYTdofQft12CquaRBVLLfPshDpy605rco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aRj33LryoK4NVw/cU+uGnOCPpYy9kXB0xL4YJW/+HOI=; b=ag+R1Xx4GgOPULZWLVxyYNUnMh
 TQlGW/p7T+v3HYA0g8+700ktrcFNCO/Ylc4OC0ROsd74GHaiC0htV1kNUpr8zbeluFvq2CjnHC+yI
 xTBObvT8SP5T5ZwSp/t/sE5jeo+/sBz4Mi3CTas9c2XnHBYyKx3TS00trbQ1kXpPVhBw=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYZao-00Bb2l-Im
 for openipmi-developer@lists.sourceforge.net; Tue, 12 May 2020 18:25:28 +0000
Received: by mail-ot1-f68.google.com with SMTP id v17so3361257ote.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 May 2020 11:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aRj33LryoK4NVw/cU+uGnOCPpYy9kXB0xL4YJW/+HOI=;
 b=G89N+DIXJ0m8qnqW8fmov8F5+bXtV1Cxf3LAykuIZVScjQ+ZARwSFNXr1hE8b20B5H
 AzgCmsGKthY/9dRUpNbGMGbR4nEQxicCWCn/BPWTIVy4lzRDKtaTh6kxX7Vq69iBx06/
 48U4bAgbVjPV2W8ZQYIIQ1ASuQnDcYicgMiWoZx5ck+5+/UPIBiC14HRAqSRd3MjDHXC
 jWcokOmXIZjfUDZKipLw6/PEzgBbfqm+3rogBOtLh6wbiyA1eaSK+d1KBodWPyGpFKOL
 B8RVorM2p8Y2ZQViO8qGwLq0kE9yeCS6h9APel8sVVBOrEu76WF359gmbx3/Bj7Kuu+s
 DqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=aRj33LryoK4NVw/cU+uGnOCPpYy9kXB0xL4YJW/+HOI=;
 b=ae8/Ym4ITPSr53nurbH5OqNzTtIC0cfElglJT1im9Jj8PZ4KQ1enfSBuNeFtiRgSfs
 0MpxRtB0ax4loUFklTp0eMMxP23qeJcRBLq32ANsM2CtUULOpJSBQecNk1nUZUVJO60Z
 bXSjsGRMppiVTwkiLL1Sj0iaUYsHBcx8VKEz8RnsAZEdhiG007BDwgzC5Bh8yPQ2VK1W
 5dhxKcbigIKQBIGmb+izzuUxp+gQqtz2LxZjqAtDIZPqyDvAS5nlJYb2k6p2jb16R1yG
 iHOKy5T6ZDiCnfhBYX5G+MIh+SFsaZcMhJeEe34guffDL291AUFS/2mLcmb6UGCy+5uB
 nDmQ==
X-Gm-Message-State: AGi0PuZeXyxqzB8Ux458FTdEprijOvBa9BM6VL6moO1xStJ3QKADw734
 Do4vAZJtoGgyKrn6dysaEg==
X-Google-Smtp-Source: APiQypKlJtOmmYqWrL9bW0Hq5Re0MJllNIsFRR4wcUyNq4XGwzZZ4LNXSVxzNiHnXVoifuMpWPvyEA==
X-Received: by 2002:a05:6830:1da1:: with SMTP id
 z1mr17695608oti.58.1589307920726; 
 Tue, 12 May 2020 11:25:20 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m27sm345076oom.22.2020.05.12.11.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 11:25:20 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id E06EC180042;
 Tue, 12 May 2020 18:25:18 +0000 (UTC)
Date: Tue, 12 May 2020 13:25:17 -0500
From: Corey Minyard <minyard@acm.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20200512182517.GP9902@minyard.net>
References: <20200326210958.13051-1-wsa+renesas@sang-engineering.com>
 <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYZao-00Bb2l-Im
Subject: Re: [Openipmi-developer] [PATCH 1/1] char: ipmi: convert to use
 i2c_new_client_device()
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
 openipmi-developer@lists.sourceforge.net, linux-i2c@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 26, 2020 at 10:09:58PM +0100, Wolfram Sang wrote:
> Move away from the deprecated API.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Ok by me.

Acked-by: Corey Minyard <cminyard@mvista.com>

Do you want me to take this, or is this part of something else?  I can
submit it if you like.

-corey

> ---
>  drivers/char/ipmi/ipmi_ssif.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 8ac390c2b514..2791b799e33d 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1945,8 +1945,8 @@ static int ssif_adapter_handler(struct device *adev, void *opaque)
>  	if (adev->type != &i2c_adapter_type)
>  		return 0;
>  
> -	addr_info->added_client = i2c_new_device(to_i2c_adapter(adev),
> -						 &addr_info->binfo);
> +	addr_info->added_client = i2c_new_client_device(to_i2c_adapter(adev),
> +							&addr_info->binfo);
>  
>  	if (!addr_info->adapter_name)
>  		return 1; /* Only try the first I2C adapter by default. */
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
