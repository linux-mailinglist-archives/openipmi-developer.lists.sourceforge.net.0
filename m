Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6CA29CAFB
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Oct 2020 22:09:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kXWDX-0008HD-GH; Tue, 27 Oct 2020 21:09:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kXWDW-0008H6-Bj
 for openipmi-developer@lists.sourceforge.net; Tue, 27 Oct 2020 21:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IyeUUlifhfZxzl2tT4e9734IrQJyyl3i93GsvUKGcEw=; b=OOl+U69jdwZddTosTsyQFtZWLM
 W3In/Yv6nBStxhHEq9rPD7jRXIEO27bBaXSmoLkJVamv59p4NoWTLSlZzflksWuNNnYiNSJdbGDAo
 m0wcpdYMcNkc7KoUKgXH3q8FtL/miNwTF2pQ07xiZE/UlJjKDtcSln95EhzbqqHe431Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IyeUUlifhfZxzl2tT4e9734IrQJyyl3i93GsvUKGcEw=; b=IbhBGVHbErM4g9+I5c3WOSXEVe
 3c9+s8hADmavQkdcvFhCGaTXHhOupLF8Fem1USfddX01dWINkMjDdBgOt3snc6ls1+0mrmhJen9pK
 mOsRe8iTwP42qgaYPctqBJ04J8PRyGuxPyYAGYOjrAmQqGI4upaUNkLw2l6xqq4wOX6E=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kXWDP-00G60g-VW
 for openipmi-developer@lists.sourceforge.net; Tue, 27 Oct 2020 21:09:18 +0000
Received: by mail-oi1-f193.google.com with SMTP id x1so2756823oic.13
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Oct 2020 14:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=IyeUUlifhfZxzl2tT4e9734IrQJyyl3i93GsvUKGcEw=;
 b=GiBT7+ON30FfoAOLKQ53SgUHxMqtECM6jHWF5pFGimGhlxjx3XCHV3Y2yVx2GW/+q9
 q2dBl9oBF4Na/wAkamYeYMAVeIctFqnbCmibXbdeEZEF/TUXmyNxtvdIzdALICpDDVta
 teMmZaP/O+Uzc+GYrCjCEXMKlHPz+paOMdtsBtWa9uQDcFhSXLCEdF+3xgKoKr7Bd8pv
 R3yHorYr5TZnacKiYd0f5K82Ea/N6H9CEigO4em0MjcldsOxrjC9m2DgJMoD/rwlX02T
 0nGeOhvA6x/MK2dES467jSGPjVxyx2KEAWpN93LCFcYxQ75hcA2sc4ub6VO1goVRSfwl
 tKPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=IyeUUlifhfZxzl2tT4e9734IrQJyyl3i93GsvUKGcEw=;
 b=Oh0ii3xZH7LTG1OCzA9FGlTMQhcRSeyiPeFPyZvwyIkqciMoiQrhNZzUpi0m3w5wg4
 S7x1tsoE5VhyBFsJ09teDFSLQFfP/lCEV0/uqG1FFcoc+Go2IjduO5EUrX4+6fE7dNE6
 t/RTYId2sK8LGzQ/x2vLEbsI3Qq3qFQp7leQODGtp5zAIw8+0akYzK6+dR5Baw4LSMOL
 L4qUhzBVpuoEbtuNroJKcxWb32fzmuFlnfyYGyLEcBKEFINA71jVKhMHYJKvr0Cw3yyW
 AvBCbOZJIbeXTJsTu5D8wvVtEie3UxDW8phe6OtZx54pFS6ybbGqrZq5o7ozXtag+Gup
 0RfA==
X-Gm-Message-State: AOAM531mAq6pBKbXUvA1lD/bFkrYRD812+scFqapvN3LCZRtwkMoJX4E
 0dQ30clFigOQfG/vkYzImF/rNc2ZRknz
X-Google-Smtp-Source: ABdhPJyMkVlmKLcg/Xv0n4DztP+V7NTTeLWFOeh8RcBXAiSm6PPMkNn+hEa+Q4YUyTFwT4XqJDVxyQ==
X-Received: by 2002:aca:e186:: with SMTP id y128mr2796940oig.25.1603832945949; 
 Tue, 27 Oct 2020 14:09:05 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id f124sm1938131oia.27.2020.10.27.14.09.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 14:09:05 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:64b8:c481:9aa8:415f])
 by serve.minyard.net (Postfix) with ESMTPSA id 1E1BD180057;
 Tue, 27 Oct 2020 21:09:04 +0000 (UTC)
Date: Tue, 27 Oct 2020 16:09:02 -0500
From: Corey Minyard <minyard@acm.org>
To: trix@redhat.com
Message-ID: <20201027210902.GN4296@minyard.net>
References: <20201019194805.14996-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019194805.14996-1-trix@redhat.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kXWDP-00G60g-VW
Subject: Re: [Openipmi-developer] [PATCH] char: ipmi: remove unneeded break
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Oct 19, 2020 at 12:48:05PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> A break is not needed if it is preceded by a return

Ok, it's in my next tree.

Thanks,

-corey

> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/char/ipmi/ipmi_devintf.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_devintf.c b/drivers/char/ipmi/ipmi_devintf.c
> index f7b1c004a12b..3dd1d5abb298 100644
> --- a/drivers/char/ipmi/ipmi_devintf.c
> +++ b/drivers/char/ipmi/ipmi_devintf.c
> @@ -490,7 +490,6 @@ static long ipmi_ioctl(struct file   *file,
>  		}
>  
>  		return ipmi_set_my_address(priv->user, val.channel, val.value);
> -		break;
>  	}
>  
>  	case IPMICTL_GET_MY_CHANNEL_ADDRESS_CMD:
> -- 
> 2.18.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
