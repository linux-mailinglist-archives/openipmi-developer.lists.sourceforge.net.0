Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 498474C20E1
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Feb 2022 02:16:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nN2kM-0005cn-T6; Thu, 24 Feb 2022 01:16:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nN2kK-0005cg-Gz
 for openipmi-developer@lists.sourceforge.net; Thu, 24 Feb 2022 01:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xx+IQK4AbswCsWv0eLfRb46KgZPJLl5LjH43OEUCxFA=; b=bt+HPhMtZZXA3OXgLfkqQ5MiSG
 273IcTfccj6zy0D5/UcmBcE3icr4X0Hsaw5TtDbRBLdJN+sdXUwwpc6QZYCnXx5E3H5zKFp/Nv1HH
 FveylrS0DFYwD1AWC7V+qUhfM4EmLWnBxQrb+kFfNBzIDZqcLnAiEmByQNN2sv7wSN3c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xx+IQK4AbswCsWv0eLfRb46KgZPJLl5LjH43OEUCxFA=; b=m
 w3RCJKyfWQHpIKxSG8nLCbDfhzZayZUR2ouEu4wiW7fx92Ar1AIsPNfrvuy6UbBlAY9caqZ6OHq11
 IN0P2aKAmwOf9JJeZChfulY2zSKrau+ZMCAJm5+9XCBf0F10tSVO9Ac8E5LtJe+tCe0V2kjXZyvnT
 c/MPSvsPJHZ6oHFc=;
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nN2kE-00D2E1-1A
 for openipmi-developer@lists.sourceforge.net; Thu, 24 Feb 2022 01:16:39 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 r15-20020a4ae5cf000000b002edba1d3349so1269001oov.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 23 Feb 2022 17:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=xx+IQK4AbswCsWv0eLfRb46KgZPJLl5LjH43OEUCxFA=;
 b=R/VBzXkAfAoKXrFMi9lUi8K18vsiOk6qr1LsWkia8UlxmKj4QYxzhrqJKZt6/Stanu
 f1uC0UubGzoUwDDM4CxL/arOCRZyVtCNZFpz0Lx4o0fCStKKCcgTRROlVKVcJOl2w2z2
 BhIzpszHpIzQLL3kIV/jXky/x7Qtb+e7NhJ+EYK1N4ECcAYWdjwi56NAn7utVN+TnbQ4
 jecyxWS/nw1YOsjZdhCaAPyGhK/S3MQ7985fqlHGtJdEbscrWrEY9M84UpFXUhUdRhlS
 kSDf6MUuC00c9XkMrSeMKJQi32tP0EqEEB4VW5bitdzGSdfv8JB/tQoC+PFUhii8t/I5
 CPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :mime-version:content-disposition;
 bh=xx+IQK4AbswCsWv0eLfRb46KgZPJLl5LjH43OEUCxFA=;
 b=Io4mLvIsqHlctykLM27nxVWXepdRVueP4m6J1qYH361gzCGcroOhsSb/hRrSg+pUMK
 Ku/1QojecYSPRd88V5Fyx91pDAZ8GO1PXwUuTuqcVtZr+I6B4VTW2oYOYYAl0WgRLIeI
 FOqXgsIa23oWPVLTQbFU9/vXx7YR4hjsHAI3mDuwgL3TGqACV2R1gaDs3XcEwd2axKkL
 rXGJLtOksYn/ISmX/ZKrUy83zSRPTtMJL6WYIqX99JFFBV0z1bhn7evB1dd81NZ15MXD
 dilHkIjheuE9OkSGb7LBJ9eBzn3pTJwnSmbXhMp10eJDTlHF9qm1VF6GV7BzdAcyaWy3
 Zk+g==
X-Gm-Message-State: AOAM53183flXG0w8hxuQObV1dQojtdixbc6ZoHconXPRbmS2ao08z1+y
 mPIKMpNoLy/SPLKzR5zE7AyuoW0Jsw==
X-Google-Smtp-Source: ABdhPJybpe+nyCfmQOg6E6APtQwcrSwaYoL4UDMuG3wTXq2zCNgSpdlvxqZOqS0bqAzkl9sIx2tnfw==
X-Received: by 2002:a05:6870:f58f:b0:d4:395b:535e with SMTP id
 eh15-20020a056870f58f00b000d4395b535emr5060260oab.136.1645665388127; 
 Wed, 23 Feb 2022 17:16:28 -0800 (PST)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id 36sm535623otj.81.2022.02.23.17.16.27
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 17:16:27 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:c9bf:edb1:978d:6a78])
 by serve.minyard.net (Postfix) with ESMTPSA id 2FD941800BB
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Feb 2022 01:16:27 +0000 (UTC)
Date: Wed, 23 Feb 2022 19:16:26 -0600
From: Corey Minyard <minyard@acm.org>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <20220224011626.GA2091156@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I've been working on a project to allow a Raspberry Pi to
 be a management controller on an IPMB. I have a working driver now for the
 I2C slave interface for the Pis that works on many of the Pi boards [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.46 listed in list.dnswl.org]
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.46 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nN2kE-00D2E1-1A
Subject: [Openipmi-developer] IPMB-capable interface for a Raspberry Pi
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I've been working on a project to allow a Raspberry Pi to be a
management controller on an IPMB.  I have a working driver now for the
I2C slave interface for the Pis that works on many of the Pi boards.
Unfortunatly, it's not a general I2C slave driver; it won't for as a
normal I2C slave because of deficiencies in the hardware.  IPMB is
probably all it's good for, and the hardware will probably never be good
for much else.

The code is available at https://github.com/cminyard/linux-pi-i2c-slave
and I have some basic instructions.

Is anyone interested in this?  If so, I can provide better instructions
and work on pushing this into the mainstream kernel.  Let me know.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
