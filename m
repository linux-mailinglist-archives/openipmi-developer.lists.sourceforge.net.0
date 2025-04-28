Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D8DA9F79F
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Apr 2025 19:43:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u9SVn-0008G7-9T;
	Mon, 28 Apr 2025 17:43:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u9SVl-0008G1-BW
 for openipmi-developer@lists.sourceforge.net;
 Mon, 28 Apr 2025 17:43:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QgG4EqbmiuOSNx7DIxooRnqAS57Hf2obZ1n7ALhkXhM=; b=Xuk5WtDGamShlbsua3FlGsc0Zm
 hDdKRvIvt1mH9ZevCBLVLN60FqTyNpb0em/GPxg5QN7+Rb+a6/GYdx3JXrh7m6kQKEptiMW1NoPko
 fS/m7X3qGEEThyBNXVfQtd29xpe80UBeFlFWfL+vd1dsMeNxZRC6hVcwkmQapWAtg7Lo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QgG4EqbmiuOSNx7DIxooRnqAS57Hf2obZ1n7ALhkXhM=; b=A
 9mD3nWNjKv7PMT85K9cd6WjNlOiFirGgOEnL2KR4Iq4ux9OZY2ntogttvQOUVvTNITqTbaxNlbwTW
 8tDURI+wt39O9g9gSJvDPuh/9e7BKJNgfqHXf7Neds22giSTP+BlVs1QXNbFbxRtYJ3CykbADrMLN
 cHs8dcWUGeQzb9M0=;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u9SVW-0000z4-6L for openipmi-developer@lists.sourceforge.net;
 Mon, 28 Apr 2025 17:43:21 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-7302a769534so3551850a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Apr 2025 10:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745862174; x=1746466974;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QgG4EqbmiuOSNx7DIxooRnqAS57Hf2obZ1n7ALhkXhM=;
 b=P8dnt8BEcWgbMoFsHWyuOQtNY8KoY0BkGyUJVDE3StNthKczrD91lds41bJdGEP1Ji
 I4l1P6n8XVWDJiURDAPrwjDgQ61V45buI7aKDLCyDjSBz3HDTYbSxbZW+c0qR+IagrbU
 z9XGfHVZX8OAcqr/1feSvay19f4IGepqwik0e16/Hu+d2sQrIutO+kLND6PeNeKLtLkp
 zuDsipU0edTL5V2huhy1t0vrETBYnnpMw3wyHv/3cm7x5gdbcOr0+atwURisN6zrB8cr
 fminQUix4x/YrortxO5Xfu4U33k0Zy2ihMw/ZsgHZNiWGD1or7b9n2mshU9+LIUlV7Zc
 GWHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745862174; x=1746466974;
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QgG4EqbmiuOSNx7DIxooRnqAS57Hf2obZ1n7ALhkXhM=;
 b=XKYaGrZl6jp53Q0PCvqWSi4PbcnEhgmuSKUVBawPugULp5kyFMm6sA9puoVUyYVfcW
 DpPFZwb8MWHoQP02t/pMQWePqqvG4Rhr+W90TA96tSb/ITPM8muqxioqFnfvLEybPsuI
 EpD6fPmH0wkxCtg1LR8NjYDChwdE7qUq38I20t28PBPWa7u1sJb0iostfJsw8J4Smqhk
 dNAKdrcFZd1xdhQWtfH03q9HbslsDUF9NQ7bo9pqdqX/M1DvjDFyD0Xut+jw+O6e8BM+
 nYoPicVnmm6owESglTOeeCAVe+tZz/0Mz8fgjIFDg+aZwi/Vy6/iZT9DvTqECMxf8LVN
 ENNA==
X-Gm-Message-State: AOJu0Yy9ezabuV92NOHN2yLkaTWArN3hrP/yW5tMgo2zXC6ZxVOy0hXH
 DUmRBRuJdmT2Vc++TP/UQMHM9VMrWx0SGEqMzPEZz4EpAfG33z2IqfZTBGcmQX86DQ1z9Fi4T9Q
 a
X-Gm-Gg: ASbGnct3U3KczyLwdrA4VWnOP2VS2+PnbwV4H+yulgZNEsfYwUD6ZiyuvE+F8coYEXo
 CBF9CINw5f9R2ODIiQdVQVmSVj8lQcSQ5+GQFWvM1qB0DN0YYilole+l3iJ3xbPNAuBTl1Me/Yy
 6LebBN9eO28fuJ7rYLAxtJGxQWvDDwjMnn+z9kqQ3ZhvgsWelPvoBVg+QcxUcX1yY6elGaYSNFu
 4hKPL0NUL+ZacZZjaKLKQZqj0Ag1d9aaVDVd50ICZskJ/DLI+2iEl6KhlLuR7b7arlPAILbmXW0
 kotyw69WWKF+HHeEfpOUyszFTo5X9S6beshkpD1PCWvo
X-Google-Smtp-Source: AGHT+IH2Ycie1myvQKwgwTIpYUNyQY8zrJJJk/KwuzV6S5vkinGUEZZCMSuqDRwzWgcYD6rHYAm29Q==
X-Received: by 2002:a05:6830:61cd:b0:72b:9965:d997 with SMTP id
 46e09a7af769-7305c9fbb9fmr7830509a34.18.1745862174520; 
 Mon, 28 Apr 2025 10:42:54 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:8704:661f:f2d0:a246])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7304f2b208csm1846614a34.40.2025.04.28.10.42.53
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Apr 2025 10:42:54 -0700 (PDT)
Date: Mon, 28 Apr 2025 12:42:49 -0500
From: Corey Minyard <corey@minyard.net>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <aA--GXQ2lkQofZ3G@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It's been a while since a release, but there's no significant
 update outside of ipmi_sim. ipmi_sim has been heavily restructured to better
 resemble a real BMC and SMBus network. This was to support automated tests
 for the Linux IPMI driver which needed a more realistic simulation. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.54 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.54 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.54 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u9SVW-0000z4-6L
Subject: [Openipmi-developer] OpenIPMI 2.0.37 released
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
Reply-To: corey@minyard.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It's been a while since a release, but there's no significant update
outside of ipmi_sim.

ipmi_sim has been heavily restructured to better resemble a real BMC and
SMBus network. This was to support automated tests for the Linux IPMI
driver which needed a more realistic simulation.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
