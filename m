Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 318377B5CA1
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 23:45:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnQjY-0000rC-Br;
	Mon, 02 Oct 2023 21:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <phil@philpotter.co.uk>) id 1qnQjX-0000r5-9X
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 21:45:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3dA79LkNYU7asBXwt/uQxW8bheOGwedQNE5Z+nFIVT0=; b=XU8jYnoWsQMTUyF7RLnOHycJ4s
 TibfA7stR1JaWo5IWGTAsVUoy3QxhNIE/upq0TefyZqgnGkB79Ggg0E3tJaSe5rpRyTXrAM0UrTau
 v+KgNfYrkntfjj7+8cr5SeylfSn/BaZMDMWoPbEPMK7yRq/4vBnLXwVcFYaPMG3BYYkQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3dA79LkNYU7asBXwt/uQxW8bheOGwedQNE5Z+nFIVT0=; b=eDcGwh4aZc/lffoAT0D88EWOjA
 +GSRyV5URkNc26usMP1wmv1YLroRfrS5PDnS315at25iSdSyC96rlDH6RMKaSGUe3rxbW6GaXxFXI
 Ffq8YAzAHvpqZz5lLNWSNOOkhPaHqLzQizMk5w/c9eF88SulBr4qHQ42uShVQc33yfU4=;
Received: from mail-wm1-f45.google.com ([209.85.128.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnQjQ-00Ga5T-RS for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 21:45:41 +0000
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-40572aeb673so2738315e9.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 02 Oct 2023 14:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20230601.gappssmtp.com; s=20230601; t=1696283130;
 x=1696887930; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3dA79LkNYU7asBXwt/uQxW8bheOGwedQNE5Z+nFIVT0=;
 b=MkkgnbXarGW+BjEH+gAcWxzjNvGlX8eT7puxLydb+S7MfcgjbAeB9y9irrY2UCNwXO
 A6spU8bMx3cEFe+T9Bqns440KCL1H/CLTBPpPL8d2Kw7OZd7EISvQas30lGgw/dp0jD2
 SJDcu+KUGZ5sPoB/zIfsRz4kqiXHxDZPIczbx8ymGaWHw06a5ZSbcFRY/mZ7CYOpRVln
 RzPgHmfcko9Vh8on32nYb61wDlWEdnwJ1PFI3QHF1exAY2DGeetgrKhjaOZrUWpuC5GA
 Yb9DpCvXnWydBvrgQrRwybiBTWDbFuauNfQdW8h34YcC6WDQU7EJ9syFSCOoFruOTrwC
 9dSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696283130; x=1696887930;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3dA79LkNYU7asBXwt/uQxW8bheOGwedQNE5Z+nFIVT0=;
 b=Qv/j6Yg9gqUzZdxDLdrCjPO0aAvtn63/8+HvYSZaoJokEu4HPcJdjOral+ESUaZVHS
 3IrWH5FxYDUc5wViVgZAetXa7tsjTs6GGA5tK7/NBLjp0JEKQjJw99sRX26DPUN9NStx
 npbSvvAiUC0mxMS8pSpedeYTdwD0t7hBHX3Z171DNO7RKQNOKFKimsD6uv8noJUeia4y
 UKNN3EFRpep2XiDlxiy3/o8hN5BfAsd23q8ImWvhNK3BJWzncnsxyJiCu9Jf58M+t1SS
 94GyMWmfrXYDWMkurtPVXMEg+7WrFtc2Ry45iNs4/b/hbpp4MY/GOmBSDq5FNpkp9kKH
 QSZQ==
X-Gm-Message-State: AOJu0YzFUxeUu5wz8UJ6/BzNoLt5WBo5U0L3rXUgFH7h+FDdTvoLkLbp
 /2pCVCS4vsWbyShadjtxivvw9g==
X-Google-Smtp-Source: AGHT+IFQqDHrxS5nLVVcz3uYz3zBoh8PRAUblObfkXMiu+127hGE3d4cKV4jcsCeAwYclm/ssvuz7g==
X-Received: by 2002:a1c:6a05:0:b0:404:757e:c5ba with SMTP id
 f5-20020a1c6a05000000b00404757ec5bamr10282866wmc.26.1696283130281; 
 Mon, 02 Oct 2023 14:45:30 -0700 (PDT)
Received: from localhost.localdomain
 (3.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16::3]) by smtp.gmail.com with ESMTPSA id
 a11-20020a05600c2d4b00b004065daba6casm7974630wmg.46.2023.10.02.14.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 14:45:29 -0700 (PDT)
From: Phillip Potter <phil@philpotter.co.uk>
To: devnull+j.granados.samsung.com@kernel.org
Date: Mon,  2 Oct 2023 22:45:28 +0100
Message-ID: <20231002214528.15529-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-1-02dd0d46f71e@samsung.com>
References: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-1-02dd0d46f71e@samsung.com>
MIME-Version: 1.0
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > From: Joel Granados <j.granados@samsung.com> > > This
 commit
 comes at the tail end of a greater effort to remove the > empty elements
 at the end of the ctl_table arrays (sentinels) which > will redu [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.6 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qnQjQ-00Ga5T-RS
Subject: Re: [Openipmi-developer] [PATCH v2 01/15] cdrom: Remove now
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
Cc: j.granados@samsung.com, Jason@zx2c4.com, rafael@kernel.org,
 joonas.lahtinen@linux.intel.com, clemens@ladisch.de,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 phil@philpotter.co.uk, song@kernel.org, edumazet@google.com, kys@microsoft.com,
 jirislaby@kernel.org, russell.h.weight@intel.com, wei.liu@kernel.org,
 sstabellini@kernel.org, minyard@acm.org, leon@kernel.org,
 linux-rdma@vger.kernel.org, airlied@gmail.com, steve.wahl@hpe.com,
 decui@microsoft.com, willy@infradead.org, jgg@ziepe.ca,
 linux-serial@vger.kernel.org, dgilbert@interlog.com, kuba@kernel.org,
 pabeni@redhat.com, intel-gfx@lists.freedesktop.org, keescook@chromium.org,
 arnd@arndb.de, haiyangz@microsoft.com, josh@joshtriplett.org,
 jani.nikula@linux.intel.com, linux-raid@vger.kernel.org,
 rodrigo.vivi@intel.com, xen-devel@lists.xenproject.org,
 openipmi-developer@lists.sourceforge.net, jgross@suse.com,
 tvrtko.ursulin@linux.intel.com, tytso@mit.edu, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, gregkh@linuxfoundation.org, dsahern@kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 sudipm.mukherjee@gmail.com, oleksandr_tyshchenko@epam.com, mcgrof@kernel.org,
 robinmholt@gmail.com, daniel@ffwll.ch, netdev@vger.kernel.org,
 jejb@linux.ibm.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> From: Joel Granados <j.granados@samsung.com>
>
> This commit comes at the tail end of a greater effort to remove the
> empty elements at the end of the ctl_table arrays (sentinels) which
> will reduce the overall build time size of the kernel and run time
> memory bloat by ~64 bytes per sentinel (further information Link :
> https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
>
> Remove sentinel element from cdrom_table
>
> Signed-off-by: Joel Granados <j.granados@samsung.com>
> ---
>  drivers/cdrom/cdrom.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/cdrom/cdrom.c b/drivers/cdrom/cdrom.c
> index cc2839805983..a5e07270e0d4 100644
> --- a/drivers/cdrom/cdrom.c
> +++ b/drivers/cdrom/cdrom.c
> @@ -3655,7 +3655,6 @@ static struct ctl_table cdrom_table[] = {
>  		.mode		= 0644,
>  		.proc_handler	= cdrom_sysctl_handler
>  	},
> -	{ }
>  };
>  static struct ctl_table_header *cdrom_sysctl_header;
>
>
> -- 
> 2.30.2


Hi Joel,

Looks good to me, many thanks. I'll send on for inclusion.

Reviewed-by: Phillip Potter <phil@philpotter.co.uk>

Regards,
Phil


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
