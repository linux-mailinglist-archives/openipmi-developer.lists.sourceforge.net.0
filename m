Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 023807B2139
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Sep 2023 17:26:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qlsuW-0007Rg-W0;
	Thu, 28 Sep 2023 15:26:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wei.liu.linux@gmail.com>) id 1qlsuO-0007RZ-27
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 15:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PYPUiAEm0lZNQbU6hKmoJKqPGRAnrTCwSSHfRdZ7LfA=; b=aTv1FG7z1aFDFVgLuFx54qM/Ww
 LjI+zrGfWCapSboKPJJUpZQf1vdIDRgZWMlF3yPPRUGe50lK/7ZTOvgfR+5mmiMoLPKXpp49Srwq/
 6fPcV4nKMNno5fbzL3JSlYuKo1LboIZjKBHXl6YhM17EXJJNTCjnMPLS2t0mddYYUJrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PYPUiAEm0lZNQbU6hKmoJKqPGRAnrTCwSSHfRdZ7LfA=; b=E/0Ltcegva1g0lfQo0V7aHx4Np
 D3FrGl2dvzqibRIc12gXPqKfWbdb5ykZdaVsa7WPNlULwWSNCXZbk1cEyKS85Ng4Lu+omLn3/PXRJ
 5SOpjKLJXi66mUhikX8USB26X19zUg4YduVotHc5xp8l0Js2PkGnyP+Ps7Z3CXrZtKlU=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qlsuG-0004bT-AF for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 15:26:29 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-6c4e7951dddso4759197a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Sep 2023 08:26:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695914779; x=1696519579;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PYPUiAEm0lZNQbU6hKmoJKqPGRAnrTCwSSHfRdZ7LfA=;
 b=A/iCOVWUW++WXSnXr5JDhED1JsQaIC/MxH/Qv6E5PDHspjTmllcg9/LboVxkG9lbZ3
 ILGU49E42T3OHQWiGfW95X+ybTY6l/He9YQP/P1lBxx2weV5/zK/4AWvE4GzMWYJCOUN
 SbgRuxGVTVF5cNJXKSoQ/5LseX9aKcbhAnDEZVNrroGN5LrtR5Mj0EmNBS6aGGeL9YzC
 VWwpf9HAXODQIeoLogkEEbS81BoFqa6fCZ4Pq3+0G4gt7YF0e2dwkRYUOuqbUkUjT+Jx
 +1eX6qwDQPY9Uszp0qpy2XsQJgXylc/sUX30k///V7GRblgTmp+bVXAy2CdFjT7ozuc+
 OnjQ==
X-Gm-Message-State: AOJu0YwF+5Hceqoxp8Lwk/ywTQGq5P7tJuvw2hl38rWuOCWNEpHJJ2O9
 Ds+8MBa6tSsgOY7AN9qt8G8=
X-Google-Smtp-Source: AGHT+IEkFDTusLpYox11EoA1Tl2MJIdC5Ad7Ua286wH6ql8JYqDg2cQ1Wc6Zlzvv071aY+VufA88gQ==
X-Received: by 2002:a9d:73d5:0:b0:6c4:b339:2528 with SMTP id
 m21-20020a9d73d5000000b006c4b3392528mr1632381otk.16.1695914778722; 
 Thu, 28 Sep 2023 08:26:18 -0700 (PDT)
Received: from liuwe-devbox-debian-v2 ([20.69.120.36])
 by smtp.gmail.com with ESMTPSA id
 j14-20020aa78dce000000b006906aaf1e4dsm13514673pfr.150.2023.09.28.08.26.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Sep 2023 08:26:18 -0700 (PDT)
Date: Thu, 28 Sep 2023 15:26:16 +0000
From: Wei Liu <wei.liu@kernel.org>
To: j.granados@samsung.com
Message-ID: <ZRWbGDlXCS4t8tMf@liuwe-devbox-debian-v2>
References: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
 <65157da8.050a0220.fb263.fdb1SMTPIN_ADDED_BROKEN@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <65157da8.050a0220.fb263.fdb1SMTPIN_ADDED_BROKEN@mx.google.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Please change the prefix to "Drivers: hv:" in the subject
 line in the two patches. On Thu, Sep 28, 2023 at 03:21:39PM +0200,
 Joel Granados
 via B4 Relay wrote: > From: Joel Granados <j.granados@samsung.com> > > This
 commit comes at the tail end of a greater effort to remove the > emp [...]
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wei.liu.linux[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.44 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qlsuG-0004bT-AF
Subject: Re: [Openipmi-developer] [PATCH 14/15] hyper-v/azure: Remove now
 superfluous sentinel element from ctl_table array
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Steve Wahl <steve.wahl@hpe.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Phillip Potter <phil@philpotter.co.uk>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Jiri Slaby <jirislaby@kernel.org>,
 Russ Weight <russell.h.weight@intel.com>, Wei Liu <wei.liu@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Corey Minyard <minyard@acm.org>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 David Airlie <airlied@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Dexuan Cui <decui@microsoft.com>, willy@infradead.org,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-serial@vger.kernel.org,
 Doug Gilbert <dgilbert@interlog.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, josh@joshtriplett.org,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-raid@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, xen-devel@lists.xenproject.org,
 openipmi-developer@lists.sourceforge.net, Juergen Gross <jgross@suse.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Theodore Ts'o <tytso@mit.edu>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Ahern <dsahern@kernel.org>, Robin Holt <robinmholt@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Please change the prefix to "Drivers: hv:" in the subject line in the
two patches.

On Thu, Sep 28, 2023 at 03:21:39PM +0200, Joel Granados via B4 Relay wrote:
> From: Joel Granados <j.granados@samsung.com>
> 
> This commit comes at the tail end of a greater effort to remove the
> empty elements at the end of the ctl_table arrays (sentinels) which
> will reduce the overall build time size of the kernel and run time
> memory bloat by ~64 bytes per sentinel (further information Link :
> https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
> 
> Remove sentinel from hv_ctl_table
> 
> Signed-off-by: Joel Granados <j.granados@samsung.com>
> ---
>  drivers/hv/hv_common.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/hv/hv_common.c b/drivers/hv/hv_common.c
> index ccad7bca3fd3..bc7d678030aa 100644
> --- a/drivers/hv/hv_common.c
> +++ b/drivers/hv/hv_common.c
> @@ -147,8 +147,7 @@ static struct ctl_table hv_ctl_table[] = {
>  		.proc_handler	= proc_dointvec_minmax,
>  		.extra1		= SYSCTL_ZERO,
>  		.extra2		= SYSCTL_ONE
> -	},
> -	{}
> +	}

Please keep the comma at the end.

>  };
>  
>  static int hv_die_panic_notify_crash(struct notifier_block *self,
> 
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
