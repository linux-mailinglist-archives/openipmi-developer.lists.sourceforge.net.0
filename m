Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0E2735C3E
	for <lists+openipmi-developer@lfdr.de>; Mon, 19 Jun 2023 18:41:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qBHwK-0001PE-Ax;
	Mon, 19 Jun 2023 16:41:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qBHwG-0001P7-0C
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Jun 2023 16:41:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mcV19aRCquvCQdRFuACW3XW/4/XQ46XTCmzcnj1+5kE=; b=FuVlRtaKalLr7HcjQpGAoxbPRI
 BOD3KjKVjtURTbgVwu496i221/0yV4Y7mwRuWZreTYpUqOJqMfdOCpMybxqAIHSiyJZgb4cnpHc7c
 okMaYxycblKz32HYHCEcMFVDuU+Zv/nkVygJjALSNjtc8xtFMfRhUlqMsCiou2wsGt2E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mcV19aRCquvCQdRFuACW3XW/4/XQ46XTCmzcnj1+5kE=; b=JaANmoQCpNs7lxkVraHjtq4i28
 eNXezFHNMkSCBLNT4edPXEaN+HbNSeuA+2i4yJNapwfau08gqAiD3S+HWjzpuKMF0fCrEdrkv1fHl
 fDc0amEp40IGjg93bqZ9zYUBEx4CGHXPYrZouCDQxmiCVPH+fXivdpIpOQkyM0uhf6tA=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qBHwB-008pXm-Vx for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Jun 2023 16:41:12 +0000
Received: by mail-qt1-f177.google.com with SMTP id
 d75a77b69052e-3fde82c8ca7so25527981cf.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 19 Jun 2023 09:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687192862; x=1689784862;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mcV19aRCquvCQdRFuACW3XW/4/XQ46XTCmzcnj1+5kE=;
 b=QGEI9H8MCmtVcf8VSUAwJPRiCKL9aS3yCq3ltJqJz2LQ9Zp1dwEVzyamh1ME5fzMpc
 WmFhdVtC68JdF8KqozhMLXhC5yYx5AvQSJRCadMn/tBX9RQo4cZbwb42RY0Y/TwSz5B1
 gdj/GN++JQv9ifPPKq7RnypplBIZAPi6T3c1hcttr3aTViTw35/X+Y61BfrLVf/AVAA8
 qZJzzT0c0jWHuea2C0q98Lp6NXg9/3TCbqvsZHr9QwgzjHjOenNDxFvK2WTsBDjbHxRw
 eY9jtA5SxRRiwVgP0IfRoVngaaqbZdQanQi0Q6LEN3aUYXRkrHds2dLwS5hkMM4z63Ns
 uQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687192862; x=1689784862;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=mcV19aRCquvCQdRFuACW3XW/4/XQ46XTCmzcnj1+5kE=;
 b=EevEJQhfKUdpM3OEzPCgFBEYZ8EHuht32xxx3dBg4s5WjZ+Z9oGcoID6ryxjRN6Woo
 CiCuGNb+dDPoDlOYMFw65IEsJmG3Ta03R64JVXxxaIv8qYjVH/A9HZfbrtMvsei2k0wl
 Z9GpkeRQtkVTq0qMGrTmbDcdVZTs8E7zFJSTn+PhtKGXpK/bkoLrdc4q/ohBgP9YmslC
 EkfgfwCMmPYTKGez8sugnqz/kNyL0SkFjAPl3MjGKaXkyexi71pCtslSk/e8W64fonAw
 O/kEDzuExBgsvaJHpuKtmbXDitK6yUfTWvAqWK4IjVv4bhXSJrjBdGWtU8iMf0Sgvqqx
 Ldew==
X-Gm-Message-State: AC+VfDyKdr6eAOof0fNeUzgEbu0z9zuOFcuYWWZZdwdxVEUmmHK9C2bj
 vErRA1Cmg+lEk+McpBIxy6KE17aapQ==
X-Google-Smtp-Source: ACHHUZ4mXi2yn6+G8lN33A77Se7WDpZn/bDqisFwDZPDhH9CwrLCxxQQVoujDd96nGPvlwdEdAo7tQ==
X-Received: by 2002:a05:622a:54f:b0:3ff:21f1:949 with SMTP id
 m15-20020a05622a054f00b003ff21f10949mr1778733qtx.9.1687192861829; 
 Mon, 19 Jun 2023 09:41:01 -0700 (PDT)
Received: from serve.minyard.net ([47.184.157.108])
 by smtp.gmail.com with ESMTPSA id
 z17-20020ac87cb1000000b003f86c08b3e7sm68644qtv.21.2023.06.19.09.41.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jun 2023 09:41:01 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:3c66:2774:dcfe:891a])
 by serve.minyard.net (Postfix) with ESMTPSA id 4C3DA1800E8;
 Mon, 19 Jun 2023 16:41:00 +0000 (UTC)
Date: Mon, 19 Jun 2023 11:40:59 -0500
From: Corey Minyard <minyard@acm.org>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <ZJCFG3o4JL/OL9WU@mail.minyard.net>
References: <20230619092802.35384-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230619092802.35384-1-jiasheng@iscas.ac.cn>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 19, 2023 at 05:28:02PM +0800,
 Jiasheng Jiang wrote:
 > Add check for the return value of kstrdup() and return the error > if it
 fails in order to avoid NULL pointer dereference. Thanks, this is in my next
 tree. Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qBHwB-008pXm-Vx
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Add check for kstrdup
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
Cc: kamlakantp@marvell.com, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Jun 19, 2023 at 05:28:02PM +0800, Jiasheng Jiang wrote:
> Add check for the return value of kstrdup() and return the error
> if it fails in order to avoid NULL pointer dereference.

Thanks, this is in my next tree.

-corey

> 
> Fixes: c4436c9149c5 ("ipmi_ssif: avoid registering duplicate ssif interface")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 3b921c78ba08..3b87a2726e99 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1600,6 +1600,11 @@ static int ssif_add_infos(struct i2c_client *client)
>  	info->addr_src = SI_ACPI;
>  	info->client = client;
>  	info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
> +	if (!info->adapter_name) {
> +		kfree(info);
> +		return -ENOMEM;
> +	}
> +
>  	info->binfo.addr = client->addr;
>  	list_add_tail(&info->link, &ssif_infos);
>  	return 0;
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
