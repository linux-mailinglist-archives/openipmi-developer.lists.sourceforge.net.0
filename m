Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3C0296FF4
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Oct 2020 15:09:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kVwpE-0006sh-NK; Fri, 23 Oct 2020 13:09:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <trix@redhat.com>) id 1kUb8y-0001wk-2y
 for openipmi-developer@lists.sourceforge.net; Mon, 19 Oct 2020 19:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bDsOLCPMFbR0cX2CHf90aiCRZhzzCHCD2XRNuPp/+Yk=; b=JiKxj7gJeqWrp5dkXexyPPmLEG
 RK0eOFY4ED2mvElwS7grjVZgJnut+0rdJCoaNQ9oHR/DhIwAwRQBpa+1yD0N2kJUSWi/1u7UT9PGw
 zmKwbhKVkheaz7BbXoMxHvJRARUvezUj6zbpJMJLhgr6Zh5DN7gcF7NJVhuWAuKUXyGQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bDsOLCPMFbR0cX2CHf90aiCRZhzzCHCD2XRNuPp/+Yk=; b=QJ4RX0/iBSRM5PKFDEGGDQSXHi
 dKsWne7UQ6NqdLUK8BLLlBpOWxQs/oJLOTgWxVpIBFSjr2wZeKRZLktbHG2FfjFw6ghRYH1d2TYSm
 sTcOgRU27D1A9laV+938v9XoxGM0CY+Sb/xgkJPgQkfmmTiHIOpnskuoqd39LKNEl8QU=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kUb8u-00G5AL-19
 for openipmi-developer@lists.sourceforge.net; Mon, 19 Oct 2020 19:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603136894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=bDsOLCPMFbR0cX2CHf90aiCRZhzzCHCD2XRNuPp/+Yk=;
 b=ZqjIRMdSqvduemkMelf0il4S9efJoMPbaBCkIuUmNS+HzGy1LQZ9FEa4Mw+JIgJyHqMIZi
 267mwWfRTJ++iZWwXXIO6bV4heFMZXJWvzr8D/nDVGNIoZc42lRiJvcXn1X68W6sK0M/DG
 sVfOWQ8Ca2hBo7jYNKo2cLSP7w1PUYA=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-tCxPmzXDPfmn2rnWNimTwg-1; Mon, 19 Oct 2020 15:48:13 -0400
X-MC-Unique: tCxPmzXDPfmn2rnWNimTwg-1
Received: by mail-qk1-f200.google.com with SMTP id y77so521953qkb.8
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 19 Oct 2020 12:48:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=bDsOLCPMFbR0cX2CHf90aiCRZhzzCHCD2XRNuPp/+Yk=;
 b=JxlKtG83t3/Z3sYxGdM1alvG86NAamvBhxuuspnRnh3WyIHjUqyk0kBgjYfX8DaUIP
 idZd5mAJ+nj0lsICDoQjPxZSP3nre3r/iXgOXbhDj8Hxr0x+qrPpNCep6Z6G2ttKv/SX
 BqeiXomiveKFeyWIK7RnlKORqWkzhd/ukltQ6Dj663KlVLOcRc1UDdASAnggNdV7rHuj
 y+j0Ne0SMFdBeZfrORJATGNBo4mDhZYdUtIvJSFWe4kI6osbYW2E+aAXZCPC3SZglbJr
 DtciRhb7GSNLGU0C5cIpbQpMp460skYcmVllopkMMZFKsw1+Dm1ZZQ0yRutGDixxS07M
 M5vQ==
X-Gm-Message-State: AOAM5319XJEvciLP9AMpco6Gy2T2fAAaQg83hhra/3Y1qigxzjRyjFP+
 ZuvkRFBanZR5SjoVCCNsozRgGA+d1lJze1UQ0CcsTTawKbwyRALb1/pQ7r3PBu17+dtpaHV5AA3
 F0iHCA1Kpe6V6v4fyUG5GVWWu/Fj4Hn0xr13ChUhQ
X-Received: by 2002:a05:620a:1265:: with SMTP id
 b5mr1202547qkl.27.1603136892747; 
 Mon, 19 Oct 2020 12:48:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw81CUYvfLxISx3cCT0e2fYZOtr8WmXKqMokhkkzTusHzNRfZPMRYaV2QRXolMgWnlxdu+WoA==
X-Received: by 2002:a05:620a:1265:: with SMTP id
 b5mr1202347qkl.27.1603136890093; 
 Mon, 19 Oct 2020 12:48:10 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id a3sm374871qtp.63.2020.10.19.12.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Oct 2020 12:48:09 -0700 (PDT)
From: trix@redhat.com
To: minyard@acm.org
Date: Mon, 19 Oct 2020 12:48:05 -0700
Message-Id: <20201019194805.14996-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kUb8u-00G5AL-19
X-Mailman-Approved-At: Fri, 23 Oct 2020 13:09:38 +0000
Subject: [Openipmi-developer] [PATCH] char: ipmi: remove unneeded break
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
Cc: Tom Rix <trix@redhat.com>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Tom Rix <trix@redhat.com>

A break is not needed if it is preceded by a return

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/char/ipmi/ipmi_devintf.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_devintf.c b/drivers/char/ipmi/ipmi_devintf.c
index f7b1c004a12b..3dd1d5abb298 100644
--- a/drivers/char/ipmi/ipmi_devintf.c
+++ b/drivers/char/ipmi/ipmi_devintf.c
@@ -490,7 +490,6 @@ static long ipmi_ioctl(struct file   *file,
 		}
 
 		return ipmi_set_my_address(priv->user, val.channel, val.value);
-		break;
 	}
 
 	case IPMICTL_GET_MY_CHANNEL_ADDRESS_CMD:
-- 
2.18.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
