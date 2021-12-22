Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2312347D34E
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Dec 2021 15:01:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n02Bd-0008D4-5H; Wed, 22 Dec 2021 14:01:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1n02BG-0008Bd-Ic
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 14:01:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6rM9meUmwsTLv02DYjATChDUD/xIxIH7rXuAdVzXkVQ=; b=BGnIN/jI7nUHxEMtNt2vZycS3g
 9jYsAJyk01PI5SasIXE0gQqqbMnsSbZBRVe0l6ObxtJ9Ugm7e5MhEptextKckyFg6cG+qKUMHYuXg
 I38rcGuA2Z8tkYDyaGG2EouQoMJ4NBXvXvhcDbOZQxuoob4avYGtAKaKe9fjyD00aoCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6rM9meUmwsTLv02DYjATChDUD/xIxIH7rXuAdVzXkVQ=; b=dTc9qm7ENoUjmt5xo3jbX1u3RH
 oA1NVeVCD3nZtAUihkf0QAjSuJfaQg/n3rY37BPDXDXxbStzasXgD/nBdeo+ilQlVETsDouh0pyAT
 gOEeH+LHVU5LGDaUVkf4eeaDAQ/nQx0Hz3FD+eiqhgeEb+jhnu51bLwDsM3IjXiVHPX4=;
Received: from mail-qk1-f182.google.com ([209.85.222.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n02BD-0008BL-2t
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 14:01:22 +0000
Received: by mail-qk1-f182.google.com with SMTP id e16so2316857qkl.12
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Dec 2021 06:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=6rM9meUmwsTLv02DYjATChDUD/xIxIH7rXuAdVzXkVQ=;
 b=ZK1VUuUyucIpu8u9DV3J65pXa2kY+QyC37UC64055wMMJCbldOjQ/atdnhCk/EoK4U
 P9+1g9RVGzS2FboZ3pqJbGazUrSKCbN6Jp/xWqvWv++PnAu41/wcsHR5yvH/gTxTGwX7
 3SUZVR8y/Y3BnhgoARyv73PUnK005HbIk/R+o7k0tMFpLquVDDXA+BGQC42096XulVtA
 zctrxaTQcOhC29WH3u/iE7K5+cxQxwt+g6fLehOz6WfRjdw57L2c4sVYxWK7Z2p3I5oQ
 rWQv1IXC6hDbu0wAIoJDA/J0XRMGDzwEUEoaAPoh/kMPAXobMbVD7czdveai5S3MG5DT
 v/Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=6rM9meUmwsTLv02DYjATChDUD/xIxIH7rXuAdVzXkVQ=;
 b=Tq4c89I9I0HezImlLsVIyvQkB1UdUjSCrVlGVWzbEsSPL4x2ylyQR3GnTpYMFijpwO
 GYdPxJEu17MadWh8JAfEo3fe603xqA2phItzD8VmJjFkDCdPmdvkHKtukQz093rrXJ55
 Gbe9st0do2dvccMpWEVKVYVRNl5y3/S5cPzBaLHSWsjTao0YNGKGiNrhrh/y0mY3f8Ff
 bR/Cw8OXiZy3BTkRIx3zUVBtnztAflS9U467dxE5Y3pIYqZ6ujeQEevR/toAzMp+wB8T
 1LDp7CcYEBB+UBHZvztm0uuAPteGrhQUVyHM8NYNqo8uRPjDpo657/r2mc9pvsfLzujh
 aUoA==
X-Gm-Message-State: AOAM530kI7v1XStzo+5J7v4KLLUOdiAJWyl8Gaz/L7F9/8VjAtnH9BlY
 WFCP8NyxXdyDOXJ8XTr/kN3BAMcaTQ==
X-Google-Smtp-Source: ABdhPJyNCbwMopsKyrWFHxgddpA3Tw2geZc5/MuJZKyKJP2iOzjmlvFcqfFwdPxc9JPqdepGh6mLEw==
X-Received: by 2002:a05:620a:103a:: with SMTP id
 a26mr1955567qkk.785.1640181673021; 
 Wed, 22 Dec 2021 06:01:13 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id r187sm1759536qke.11.2021.12.22.06.01.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 06:01:12 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:a994:7eee:8e73:4087])
 by serve.minyard.net (Postfix) with ESMTPSA id 77FE1180013;
 Wed, 22 Dec 2021 14:01:11 +0000 (UTC)
Date: Wed, 22 Dec 2021 08:01:10 -0600
From: Corey Minyard <minyard@acm.org>
To: Jason Wang <wangborong@cdjrlc.com>
Message-ID: <20211222140110.GU14936@minyard.net>
References: <20211222032707.1912186-1-wangborong@cdjrlc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211222032707.1912186-1-wangborong@cdjrlc.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 22, 2021 at 11:27:07AM +0800, Jason Wang wrote:
 > The strlcpy should not be used because it doesn't limit the source > length.
 So that it will lead some potential bugs. > > But the strscpy [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.182 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1n02BD-0008BL-2t
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif: replace strlcpy with
 strscpy
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

On Wed, Dec 22, 2021 at 11:27:07AM +0800, Jason Wang wrote:
> The strlcpy should not be used because it doesn't limit the source
> length. So that it will lead some potential bugs.
> 
> But the strscpy doesn't require reading memory from the src string
> beyond the specified "count" bytes, and since the return value is
> easier to error-check than strlcpy()'s. In addition, the implementation
> is robust to the string changing out from underneath it, unlike the
> current strlcpy() implementation.
> 
> Thus, replace strlcpy with strscpy.

Ok, thanks for the patch.

-corey

> 
> Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 48aab77abebf..ba779f1abb5b 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1354,7 +1354,7 @@ static int ssif_detect(struct i2c_client *client, struct i2c_board_info *info)
>  	if (rv)
>  		rv = -ENODEV;
>  	else
> -		strlcpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
> +		strscpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
>  	kfree(resp);
>  	return rv;
>  }
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
