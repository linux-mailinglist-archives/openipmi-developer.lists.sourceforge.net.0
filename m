Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5904360DB
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 Oct 2021 13:55:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mdWf5-0002MA-H5; Thu, 21 Oct 2021 11:55:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mdWf5-0002M0-2e
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Oct 2021 11:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sko8uAJKVvY3azyAcApvw7U5YpmcilNG2F7HQLW8+ac=; b=CYWD4x9SdNuBIk+Bz3c44hO+07
 2XwTlYJOmpkXJfDNYeR+wjLeqXpKDUEP68yDSeyXCmg0q+PR1ZLcklZhsiZVLD/W9VjcVEfGCyR0m
 UrTQ7PTYHrj1x+aXLY17aAUWoIiQ+1rgooYKthmG971es2U4CiLnNVTwAzUBMKGUwe+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sko8uAJKVvY3azyAcApvw7U5YpmcilNG2F7HQLW8+ac=; b=GnKCsaIlzjRpGut8LoVbEz1eis
 zlF8HoTfMRrkm/UKetFx2x8g47FaVrNs3rP4LA6hz2MaqrW/tUIozHzK5kkBCZViQne3lH3YYdd7S
 W92sarZzuw2I/DM6jHl/ATwcC3oJRHxoS9vMWG6lT0BoftJiiHif9R4hYdxkJHyi6VXY=;
Received: from mail-qv1-f50.google.com ([209.85.219.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mdWf2-0000kN-Dx
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Oct 2021 11:55:07 +0000
Received: by mail-qv1-f50.google.com with SMTP id o20so234780qvk.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 21 Oct 2021 04:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Sko8uAJKVvY3azyAcApvw7U5YpmcilNG2F7HQLW8+ac=;
 b=i0iPPml+HlpEo9alX9gPvVwy2aYqSNrvJGce5VBfQ+2hfAwDRn09gnGujSQMvpO0k0
 E2flkhmHWbmASpLkkarQlX7LVeLUTw0MZi1sJWbO0iNQtY2EggP8NNTyvUpl7AdmoVuf
 IiarKH8AbtPx6nA8gUgxxC4Q20ZbRyic07iNwKsP08D0gvJYTpaj1XIri95u82fxLT2y
 1YDKTa5T5uYx5lh6QE9G2QWWSTOuSJLDtIHed0vXCggQTV1vIDEIerspGMRparDxyByR
 i5rPJ8Qb1X+oP/lN+0Fgpwsn1BqgYgxz/zSkhv7N1Mw9RcIdNAy0y9nnunoyyf0nZ3YG
 +ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Sko8uAJKVvY3azyAcApvw7U5YpmcilNG2F7HQLW8+ac=;
 b=oAj/aGQ1kRpRH6/MeyTdQpRTMdTU8wM1uWRFRrZEvtG3O7kQcmMNcmznx2hT4cyU6D
 iTKFB8ru+8Y+467wTIyvvc/P2djSh0cp4rgUMduUnC2rHWgfWNT0v64xibjRgCTTIXus
 hr9MJW7u6eIk9Vl2hT/ENMrUqL2eyvtjiweo7XwqdOF0sitBLUviN1e8w3CC8cen7LtY
 wuy2yQjyi0HdlzvGb+dQ4sfcRUnUJJDI1faQ80O32kwyjX+eElIAaD4JGFdf9ZkovBzk
 J89Cm5dudUNsordSn1ice8W0hyvweJrf/3H5+CnJ506JJtSzvFgg6U+favlTUejBKsSJ
 TroA==
X-Gm-Message-State: AOAM5319Ogx48fMTAuqPC/SmNo/qULVJYCPlS8jI8Ir+eAS/O+r42YG5
 WI7+bFRzZCRagcyQdUq15Q==
X-Google-Smtp-Source: ABdhPJxIEGOOrzAHJSb0WzY9386aKHFadtil47unHy09w4peuSJdqZboPKP5fcyQWa6nx14DKZUn0g==
X-Received: by 2002:a05:6214:87:: with SMTP id n7mr1307319qvr.55.1634817298451; 
 Thu, 21 Oct 2021 04:54:58 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id x16sm2296939qtp.56.2021.10.21.04.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 04:54:57 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b816:2692:1867:c58b])
 by serve.minyard.net (Postfix) with ESMTPSA id B8D2A180053;
 Thu, 21 Oct 2021 11:54:56 +0000 (UTC)
Date: Thu, 21 Oct 2021 06:54:55 -0500
From: Corey Minyard <minyard@acm.org>
To: cgel.zte@gmail.com
Message-ID: <20211021115455.GW66936@minyard.net>
References: <20211021110608.1060260-1-ye.guojin@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211021110608.1060260-1-ye.guojin@zte.com.cn>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 21, 2021 at 11:06:08AM +0000, cgel.zte@gmail.com
 wrote: > From: Ye Guojin <ye.guojin@zte.com.cn> > > coccicheck complains
 about the use of snprintf() in sysfs show > functions: > WARNING u [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mdWf2-0000kN-Dx
Subject: Re: [Openipmi-developer] [PATCH] char: ipmi: replace snprintf in
 show functions with sysfs_emit
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
Cc: Ye Guojin <ye.guojin@zte.com.cn>, openipmi-developer@lists.sourceforge.net,
 Zeal Robot <zealci@zte.com.cn>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Oct 21, 2021 at 11:06:08AM +0000, cgel.zte@gmail.com wrote:
> From: Ye Guojin <ye.guojin@zte.com.cn>
> 
> coccicheck complains about the use of snprintf() in sysfs show
> functions:
> WARNING  use scnprintf or sprintf
> 
> Use sysfs_emit instead of scnprintf, snprintf or sprintf makes more
> sense.

Yes, I agree.  It's in my queue.

Thanks,

-corey

> 
> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Ye Guojin <ye.guojin@zte.com.cn>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 20 ++++++++++----------
>  drivers/char/ipmi/ipmi_si_intf.c    |  8 ++++----
>  drivers/char/ipmi/ipmi_ssif.c       |  4 ++--
>  3 files changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index a60201d3f735..deed355422f4 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2716,7 +2716,7 @@ static ssize_t device_id_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 10, "%u\n", id.device_id);
> +	return sysfs_emit(buf, "%u\n", id.device_id);
>  }
>  static DEVICE_ATTR_RO(device_id);
>  
> @@ -2732,7 +2732,7 @@ static ssize_t provides_device_sdrs_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 10, "%u\n", (id.device_revision & 0x80) >> 7);
> +	return sysfs_emit(buf, "%u\n", (id.device_revision & 0x80) >> 7);
>  }
>  static DEVICE_ATTR_RO(provides_device_sdrs);
>  
> @@ -2747,7 +2747,7 @@ static ssize_t revision_show(struct device *dev, struct device_attribute *attr,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 20, "%u\n", id.device_revision & 0x0F);
> +	return sysfs_emit(buf, "%u\n", id.device_revision & 0x0F);
>  }
>  static DEVICE_ATTR_RO(revision);
>  
> @@ -2763,7 +2763,7 @@ static ssize_t firmware_revision_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 20, "%u.%x\n", id.firmware_revision_1,
> +	return sysfs_emit(buf, "%u.%x\n", id.firmware_revision_1,
>  			id.firmware_revision_2);
>  }
>  static DEVICE_ATTR_RO(firmware_revision);
> @@ -2780,7 +2780,7 @@ static ssize_t ipmi_version_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 20, "%u.%u\n",
> +	return sysfs_emit(buf, "%u.%u\n",
>  			ipmi_version_major(&id),
>  			ipmi_version_minor(&id));
>  }
> @@ -2798,7 +2798,7 @@ static ssize_t add_dev_support_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 10, "0x%02x\n", id.additional_device_support);
> +	return sysfs_emit(buf, "0x%02x\n", id.additional_device_support);
>  }
>  static DEVICE_ATTR(additional_device_support, S_IRUGO, add_dev_support_show,
>  		   NULL);
> @@ -2815,7 +2815,7 @@ static ssize_t manufacturer_id_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 20, "0x%6.6x\n", id.manufacturer_id);
> +	return sysfs_emit(buf, "0x%6.6x\n", id.manufacturer_id);
>  }
>  static DEVICE_ATTR_RO(manufacturer_id);
>  
> @@ -2831,7 +2831,7 @@ static ssize_t product_id_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 10, "0x%4.4x\n", id.product_id);
> +	return sysfs_emit(buf, "0x%4.4x\n", id.product_id);
>  }
>  static DEVICE_ATTR_RO(product_id);
>  
> @@ -2847,7 +2847,7 @@ static ssize_t aux_firmware_rev_show(struct device *dev,
>  	if (rv)
>  		return rv;
>  
> -	return snprintf(buf, 21, "0x%02x 0x%02x 0x%02x 0x%02x\n",
> +	return sysfs_emit(buf, "0x%02x 0x%02x 0x%02x 0x%02x\n",
>  			id.aux_firmware_revision[3],
>  			id.aux_firmware_revision[2],
>  			id.aux_firmware_revision[1],
> @@ -2869,7 +2869,7 @@ static ssize_t guid_show(struct device *dev, struct device_attribute *attr,
>  	if (!guid_set)
>  		return -ENOENT;
>  
> -	return snprintf(buf, UUID_STRING_LEN + 1 + 1, "%pUl\n", &guid);
> +	return sysfs_emit(buf, "%pUl\n", &guid);
>  }
>  static DEVICE_ATTR_RO(guid);
>  
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 6f3272b58ced..64dedb3ef8ec 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1603,7 +1603,7 @@ static ssize_t name##_show(struct device *dev,			\
>  {									\
>  	struct smi_info *smi_info = dev_get_drvdata(dev);		\
>  									\
> -	return snprintf(buf, 10, "%u\n", smi_get_stat(smi_info, name));	\
> +	return sysfs_emit(buf, "%u\n", smi_get_stat(smi_info, name));	\
>  }									\
>  static DEVICE_ATTR_RO(name)
>  
> @@ -1613,7 +1613,7 @@ static ssize_t type_show(struct device *dev,
>  {
>  	struct smi_info *smi_info = dev_get_drvdata(dev);
>  
> -	return snprintf(buf, 10, "%s\n", si_to_str[smi_info->io.si_type]);
> +	return sysfs_emit(buf, "%s\n", si_to_str[smi_info->io.si_type]);
>  }
>  static DEVICE_ATTR_RO(type);
>  
> @@ -1624,7 +1624,7 @@ static ssize_t interrupts_enabled_show(struct device *dev,
>  	struct smi_info *smi_info = dev_get_drvdata(dev);
>  	int enabled = smi_info->io.irq && !smi_info->interrupt_disabled;
>  
> -	return snprintf(buf, 10, "%d\n", enabled);
> +	return sysfs_emit(buf, "%d\n", enabled);
>  }
>  static DEVICE_ATTR_RO(interrupts_enabled);
>  
> @@ -1646,7 +1646,7 @@ static ssize_t params_show(struct device *dev,
>  {
>  	struct smi_info *smi_info = dev_get_drvdata(dev);
>  
> -	return snprintf(buf, 200,
> +	return sysfs_emit(buf,
>  			"%s,%s,0x%lx,rsp=%d,rsi=%d,rsh=%d,irq=%d,ipmb=%d\n",
>  			si_to_str[smi_info->io.si_type],
>  			addr_space_to_str[smi_info->io.addr_space],
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 20d5af92966d..0c62e578749e 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1190,7 +1190,7 @@ static ssize_t ipmi_##name##_show(struct device *dev,			\
>  {									\
>  	struct ssif_info *ssif_info = dev_get_drvdata(dev);		\
>  									\
> -	return snprintf(buf, 10, "%u\n", ssif_get_stat(ssif_info, name));\
> +	return sysfs_emit(buf, "%u\n", ssif_get_stat(ssif_info, name));\
>  }									\
>  static DEVICE_ATTR(name, S_IRUGO, ipmi_##name##_show, NULL)
>  
> @@ -1198,7 +1198,7 @@ static ssize_t ipmi_type_show(struct device *dev,
>  			      struct device_attribute *attr,
>  			      char *buf)
>  {
> -	return snprintf(buf, 10, "ssif\n");
> +	return sysfs_emit(buf, "ssif\n");
>  }
>  static DEVICE_ATTR(type, S_IRUGO, ipmi_type_show, NULL);
>  
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
