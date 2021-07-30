Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C80AE3DC193
	for <lists+openipmi-developer@lfdr.de>; Sat, 31 Jul 2021 01:34:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m9c0r-00020P-E5; Fri, 30 Jul 2021 23:33:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1m9c0p-00020G-RH
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 23:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IIqUaQVWCThJnO1XJXpsWQi9KUFPncSXoVIYf9fM5lI=; b=B141Tuj3Cspq4RUCDs5ttLl16E
 HlfvEcjwAuh2oGq7l0hDS06xmWa6vr5qTOtBj8O4l1MU+hfoaDhoMXosLLBBndIGFoI3+vR3qdKp+
 QWACzZoByK2XxVO5oO1eAKDKa27drwxfEtsEH21vNECs7SmHBIF3ciDgRtgCxYrxotd4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IIqUaQVWCThJnO1XJXpsWQi9KUFPncSXoVIYf9fM5lI=; b=R/tBeEpxHplqxWC6eyeDWWmgOp
 I0z5tLrGZ+gzvBDfA/1Dcgk57hSz5XkIaPk2G81euJoWgIzlXGDXheuc+TXIDtIKbVvlBCutGe/GR
 RWpiAlb7TW7+XOGb3gG50UNzIHalGP7xB19svpeQMSpiSAph7VxPkD/AFt1D9u6M2phc=;
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m9c0o-0006Vy-0E
 for openipmi-developer@lists.sourceforge.net; Fri, 30 Jul 2021 23:33:55 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 o2-20020a9d22020000b0290462f0ab0800so11231005ota.11
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 30 Jul 2021 16:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=IIqUaQVWCThJnO1XJXpsWQi9KUFPncSXoVIYf9fM5lI=;
 b=Y+9NIessVwsGP+Bqmrq/k4RftBpENsQscAOjCqXNlyKxiAeOOnsMRStCabUejO47Z4
 UlsP8TOvXWEJYuWw5UxvFWB5prflLMEGZybZsloxPTX+jDQljTkcsoVeH/Zca7zFX217
 kYRPvU0ru9lYgXvFrcfATt7fNNW/kVG6c+qEnFj4InVygVuMSVNze0hQXBvFnByZ8fVK
 Gl3mnKQ9XQ3Ak+SWvwDZJzdDBVG+BZT1uYs+kYT1N7EKFry/ADHpiXeuduMdrTXf4WMc
 Bxp/fVOwn1CabwiY2gsDI71FHoiECoHeCSKvbzaDBiZSQokNJPslKYnNY93HabW9H5MA
 OQ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=IIqUaQVWCThJnO1XJXpsWQi9KUFPncSXoVIYf9fM5lI=;
 b=d2DurQ4bKv2HC0Xri+/kWpGfdyG/Ro+vfuEmQPD4FqwXeOQ0vfJvxNl0ySxgZzaiLn
 kOSCTy+uEdOc09hoWl5FxvX85tM5i/kxTwO9Xe7cvCjgqDYknPhPfI0CQbWmxUcPhgf0
 i9nZvGQPx55hLneFtD3OP5Zx+RkMbIls+opqbnk3rUyJd9QVl0CdIeuYc91yln0kyLba
 tg2pTz450LzvT/gWDDcWbPeowywt2PzT0zovc57cTrDFGgHdoODpQajr2np6W26PzymX
 S6vRr3FhAOR+l5sOhV52xSfEVwIej3HvUR9iqZxbIN/JfLHM/dEyIfNsdK8IV71nNLFm
 aCow==
X-Gm-Message-State: AOAM5314ADed932WNzyZIymi3drfzPN4zVfG5rwth8YehcR7yTVwrY9n
 n6ec5iA9y+paRtF9oW+Biw==
X-Google-Smtp-Source: ABdhPJy1pUHowmEqvD5sFDIzhhNiRiaFIGnhHVKFWGZopVpMfA57gc9XySfkZCGfe3Wpqi4J/4WBOw==
X-Received: by 2002:a9d:ac9:: with SMTP id 67mr3969717otq.190.1627688028396;
 Fri, 30 Jul 2021 16:33:48 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id t4sm526595oiw.19.2021.07.30.16.33.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Jul 2021 16:33:47 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:3c13:1718:6a7:97c2])
 by serve.minyard.net (Postfix) with ESMTPSA id C7212180058;
 Fri, 30 Jul 2021 23:33:46 +0000 (UTC)
Date: Fri, 30 Jul 2021 18:33:45 -0500
From: Corey Minyard <minyard@acm.org>
To: Dwaipayan Ray <dwaipayanray1@gmail.com>
Message-ID: <20210730233345.GF3406@minyard.net>
References: <20210730062951.84876-1-dwaipayanray1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210730062951.84876-1-dwaipayanray1@gmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m9c0o-0006Vy-0E
Subject: Re: [Openipmi-developer] [PATCH] char: ipmi: use DEVICE_ATTR helper
 macro
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
Cc: lukas.bulwahn@gmail.com, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jul 30, 2021 at 11:59:51AM +0530, Dwaipayan Ray wrote:
> Instead of open coding DEVICE_ATTR, use the helper macro
> DEVICE_ATTR_RO to replace DEVICE_ATTR with 0444 octal
> permissions.

Looks good, this is queued for the next release.

-corey

> 
> This was detected as a part of checkpatch evaluation
> investigating all reports of DEVICE_ATTR_RO warning
> type.
> 
> Signed-off-by: Dwaipayan Ray <dwaipayanray1@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 62929a3e397e..1cbc6a6a3ef4 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1605,7 +1605,7 @@ static ssize_t name##_show(struct device *dev,			\
>  									\
>  	return snprintf(buf, 10, "%u\n", smi_get_stat(smi_info, name));	\
>  }									\
> -static DEVICE_ATTR(name, 0444, name##_show, NULL)
> +static DEVICE_ATTR_RO(name)
>  
>  static ssize_t type_show(struct device *dev,
>  			 struct device_attribute *attr,
> @@ -1615,7 +1615,7 @@ static ssize_t type_show(struct device *dev,
>  
>  	return snprintf(buf, 10, "%s\n", si_to_str[smi_info->io.si_type]);
>  }
> -static DEVICE_ATTR(type, 0444, type_show, NULL);
> +static DEVICE_ATTR_RO(type);
>  
>  static ssize_t interrupts_enabled_show(struct device *dev,
>  				       struct device_attribute *attr,
> @@ -1626,8 +1626,7 @@ static ssize_t interrupts_enabled_show(struct device *dev,
>  
>  	return snprintf(buf, 10, "%d\n", enabled);
>  }
> -static DEVICE_ATTR(interrupts_enabled, 0444,
> -		   interrupts_enabled_show, NULL);
> +static DEVICE_ATTR_RO(interrupts_enabled);
>  
>  IPMI_SI_ATTR(short_timeouts);
>  IPMI_SI_ATTR(long_timeouts);
> @@ -1658,7 +1657,7 @@ static ssize_t params_show(struct device *dev,
>  			smi_info->io.irq,
>  			smi_info->io.slave_addr);
>  }
> -static DEVICE_ATTR(params, 0444, params_show, NULL);
> +static DEVICE_ATTR_RO(params);
>  
>  static struct attribute *ipmi_si_dev_attrs[] = {
>  	&dev_attr_type.attr,
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
