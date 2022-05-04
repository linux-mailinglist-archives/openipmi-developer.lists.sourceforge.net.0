Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46005519EE6
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 May 2022 14:06:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nmDmF-0002yM-Ah; Wed, 04 May 2022 12:06:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nmDmD-0002yG-VV
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 12:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+WNZryBXL+g7kwNzKGyTKWK4wg/wzwMgT6OB9tUEVx4=; b=LmatF+6zSXqcemYw3VITZkSy5+
 ptOZsEipNiy22Psbp2U7khc31/cNyFcZo76+gAnv99YLHmLAKSWUGtE3POSmALP01gtTesARwNTgX
 7KAg0OcUmeC/M8nfofxKcMA1FoQ0f6Xr5UlHei3Nq0NxaiKgW82W2BScqeK8hfNBfCO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+WNZryBXL+g7kwNzKGyTKWK4wg/wzwMgT6OB9tUEVx4=; b=UYA8rrYh3rPZbYIqiP6TPa4q2q
 4zSE6aDgiL53724zqVgftOrN7LKGpNlYJRxH6o4FfIu6IOlgAp4XDnseznTl49Z59Q/p1ADxdbIJZ
 mf3mkZLJ5BEHqbnRk2hkPxKIKp3ZGRER/+GuCVoHpk7KhjNPj/tZR6wOVs0OvbA49F50=;
Received: from mail-qt1-f172.google.com ([209.85.160.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nmDmB-0012EP-FK
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 12:06:40 +0000
Received: by mail-qt1-f172.google.com with SMTP id y3so640448qtn.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 04 May 2022 05:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=+WNZryBXL+g7kwNzKGyTKWK4wg/wzwMgT6OB9tUEVx4=;
 b=ZhzXCEkMq4XwxySq3BgrlTremloLuIKnLA4pTWCqSN9GHXJ7dLD8mUJk/a6Cx4DV9W
 qtBExIMVKBAmXh6F1zj87sqgxLJJoNG2txnzswjsQGHmgWu/KYeYWE6K5H9gp7SW1sI5
 FvlrNc8ComRabkEV3E0joBA8MMxDscVIJoHVfHhOSci22mtwHPfELk8iLcRGDJ15ELIO
 QV/ET9LIWtE+LIp4kymM9EWIX3H72WMXcj5bRrb0wTFn5gkJ4iPpugvtCjMT928AliNZ
 7ElEpkBUxqZBip8N0hWXNku1ShOJ7TwDuPgcw64PDBIcHnngwNTweMqLJopbxEcd/iQG
 uu9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=+WNZryBXL+g7kwNzKGyTKWK4wg/wzwMgT6OB9tUEVx4=;
 b=1IW3XU/usRpC1YMe/EAJcAG+IVLrjlJpw7oL2bN53q+4qh5G0rnKAnAwiPvBphcm8O
 IEiGxaQR2K/X9tZR8Bh+psdJpzepABSccqzPUV6YkyOQjhozKDQ+rasQlkqyIZxFUda3
 Q67kwL/Hj9dJ+gsvTnhwAllHo/5DsvjFMQyFnWw6O8OrCVW0v5sfNm+XswssTDJQXAH5
 AAD8KQ0F+SmrmYL3tuHzvZItqpbBU4XKMm5mvUvrCvhQ1o9YooPG7aGQM8vG3BSLuZoX
 BhQsusg3pwEjFSXmXL5RQRxEsHsJNZ6xNN6lI0qnssH6ArSjOvUitMlv78DP6curJoQx
 gFog==
X-Gm-Message-State: AOAM530OTQVMMs7SReAXqHLM3I6sXbg3wIADgYmLFz6HQFmnhR5/zR48
 Uek8rvXBDcbuj8ZJuYtT5A==
X-Google-Smtp-Source: ABdhPJy8E2ZGhOMqaubc9bI3GOFs28UeBhEN5Ik/qSGSpbMeojwEWqvAJa0IzwkfLKv2xoNBPuJkig==
X-Received: by 2002:a05:622a:1ba7:b0:2f3:a08e:7c11 with SMTP id
 bp39-20020a05622a1ba700b002f3a08e7c11mr15849578qtb.10.1651665993525; 
 Wed, 04 May 2022 05:06:33 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 l184-20020a3789c1000000b0069fc13ce22esm7512348qkd.95.2022.05.04.05.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 05:06:33 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:149c:2dc6:c0ab:4341])
 by serve.minyard.net (Postfix) with ESMTPSA id 322621800BD;
 Wed,  4 May 2022 12:06:32 +0000 (UTC)
Date: Wed, 4 May 2022 07:06:31 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20220504120631.GE3767252@minyard.net>
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-2-quan@os.amperecomputing.com>
 <20220423015119.GE426325@minyard.net>
 <ec7b86ec-827f-da64-8fd2-eae09f802694@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec7b86ec-827f-da64-8fd2-eae09f802694@os.amperecomputing.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, May 04, 2022 at 01:45:03PM +0700, Quan Nguyen via
 Openipmi-developer wrote: > > > > I seem to remember mentioning this before,
 but there is no reason to > > pack the structures below. > > > > [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.172 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nmDmB-0012EP-FK
Subject: Re: [Openipmi-developer] [PATCH v7 1/3] ipmi: ssif_bmc: Add SSIF
 BMC driver
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, May 04, 2022 at 01:45:03PM +0700, Quan Nguyen via Openipmi-developer wrote:
> > 
> > I seem to remember mentioning this before, but there is no reason to
> > pack the structures below.
> > 
> 
> The packed structure is because we want to pick the len directly from user
> space without worry about the padding byte.
> 
> As we plan not to use the .h file in next version, I still would like to use
> packed structure internally inside ssif_bmc.c file.

Packed doesn't matter for the userspace API.  If you look at other
structures in the userspace API, they are not packed, either.  The
compiler will do the right thing on both ends.

> 
> > And second, the following is a userspace API structures, so it needs to
> > be in its own file in include/uapi/linux, along with any supporting
> > things that users will need to use.  And your userspace code should be
> > using that file.
> > 
> 
> Meantime, I'd like not to use .h as I see there is no demand for sharing the
> data structure between kernel and user space yet. But we may do it in the
> future.

If you have a userspace API, it needs to be in include/uapi/linux.
You may not be the only user of this code.  In fact, you probably won't
be.  You need to have a .h with the structures in it, you don't want the
same structure in two places if you can help it.

> 
> > > +struct ssif_msg {
> > > +	u8 len;
> > 
> > Just to be 100% safe, it might be better to use a u16 on this.  The spec
> > sort of limits this to 255 bytes, but it also sort of leaves it open to
> > be larger.
> > 
> Yes, u8 only limited to 255 bytes and there is no space for future grow.

Please make it a unsigned int for the length and __u8 for the data to
give necessary flexibility.

Thanks,

-corey

> 
> > > +	u8 payload[MSG_PAYLOAD_LEN_MAX];
> > > +} __packed;
> > > +
> > > +struct ssif_part_buffer {
> > > +	u8 address;
> > > +	u8 smbus_cmd;
> > > +	u8 length;
> > > +	u8 payload[MAX_PAYLOAD_PER_TRANSACTION];
> > > +	u8 pec;
> > > +	u8 index;
> > > +} __packed;
> > > +
> > > +/*
> > > + * SSIF internal states:
> > > + *   SSIF_READY         0x00 : Ready state
> > > + *   SSIF_START         0x01 : Start smbus transaction
> > > + *   SSIF_SMBUS_CMD     0x02 : Received SMBus command
> > > + *   SSIF_REQ_RECVING   0x03 : Receiving request
> > > + *   SSIF_RES_SENDING   0x04 : Sending response
> > > + *   SSIF_BAD_SMBUS     0x05 : Bad SMbus transaction
> > > + */
> > > +enum ssif_state {
> > > +	SSIF_READY,
> > > +	SSIF_START,
> > > +	SSIF_SMBUS_CMD,
> > > +	SSIF_REQ_RECVING,
> > > +	SSIF_RES_SENDING,
> > > +	SSIF_ABORTING,
> > > +	SSIF_STATE_MAX
> > > +};
> > > +
> > > +struct ssif_bmc_ctx {
> > > +	struct i2c_client	*client;
> > > +	struct miscdevice	miscdev;
> > > +	int			msg_idx;
> > > +	bool			pec_support;
> > > +	/* ssif bmc spinlock */
> > > +	spinlock_t		lock;
> > > +	wait_queue_head_t	wait_queue;
> > > +	u8			running;
> > > +	enum ssif_state		state;
> > > +	/* Timeout waiting for response */
> > > +	struct timer_list	response_timer;
> > > +	bool                    response_timer_inited;
> > > +	/* Flag to identify a Multi-part Read Transaction */
> > > +	bool			is_singlepart_read;
> > > +	u8			nbytes_processed;
> > > +	u8			remain_len;
> > > +	u8			recv_len;
> > > +	/* Block Number of a Multi-part Read Transaction */
> > > +	u8			block_num;
> > > +	bool			request_available;
> > > +	bool			response_in_progress;
> > > +	bool			busy;
> > > +	bool			aborting;
> > > +	/* Buffer for SSIF Transaction part*/
> > > +	struct ssif_part_buffer	part_buf;
> > > +	struct ssif_msg		response;
> > > +	struct ssif_msg		request;
> > > +};
> > > +
> > > +static inline struct ssif_bmc_ctx *to_ssif_bmc(struct file *file)
> > > +{
> > > +	return container_of(file->private_data, struct ssif_bmc_ctx, miscdev);
> > > +}
> > > +#endif /* __SSIF_BMC_H__ */
> > > -- 
> > > 2.35.1
> > > 
> > > 
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
