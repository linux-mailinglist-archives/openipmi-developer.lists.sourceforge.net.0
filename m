Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDC1A9B480
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zmn-0001Uq-4X;
	Thu, 24 Apr 2025 16:50:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zmm-0001Uf-2s
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=irqP/fJ8dLQK1ES9rmqL9YT2JfrGImrnE/KpnWMXB4c=; b=Wj6m3GYgnryYecHzRz5cqP0W3M
 kfA0vWS3ug9pIjfwEH2rZiyB8eCAaLBf0Kasi28mCTQF6hoK2dpht9ZI867EsL2bSpSL3oGo1uWov
 rXhTW/ihw3C7k+pei31YVM05oHENyejzaSC06Pe3hCqnelza5rWdyOm/gsWr51qgTt2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=irqP/fJ8dLQK1ES9rmqL9YT2JfrGImrnE/KpnWMXB4c=; b=B
 9CDnzw6vdY7K0pav/13MB7AC4Tcw9H4t6Gb21VIh+PxHKmigU85dTh8oJV3StWatuSWs23uRhpi8a
 oURcPbRqk2u1vdHnda20+HNX4xWvWTjWJ91JVEmyIzyaevgWaGmgi49OGFiP+zAJ7k3okrsJMZGBN
 XLQf8PLmRi2br08s=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmX-0002gN-3f for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:50:52 +0000
Received: by mail-oi1-f177.google.com with SMTP id
 5614622812f47-3f8d2f8d890so821006b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513426; x=1746118226;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=irqP/fJ8dLQK1ES9rmqL9YT2JfrGImrnE/KpnWMXB4c=;
 b=xwRSEWgMBDTR6Se6ZBiBzxjgYG3TkV5ElhYSiSPPQA4aIWduEoewsue5BetkFXGqF8
 rNO3NKsc9CiuHW0BJz9XdAJA347zuWJGs9PInqSl23oC/p74ZPBhNkY/+4u8OwdxKduM
 dvwklqHZm0Ft86SbapHO7KNCAxxcnUAJSbVqx6qPtICcUgkKY0ptGf7YoUe2e6k3UUV4
 msXgWptR70AEiTE7Dlpv84K7sUbxMO1KJIcc6ZnUwgZ1WhhgN9V+F09ygS+pgyL9HoPY
 ko9feIRAaDCGiF4WBthB3atfrBWgNaNWwWdWWJfMj7f0U1Wxesh8QdXp3Jk+y7rqhB4t
 Vr6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513426; x=1746118226;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=irqP/fJ8dLQK1ES9rmqL9YT2JfrGImrnE/KpnWMXB4c=;
 b=OyygDLu7r60U8PoBLhtPmgGLCvhcI45Fc7HjagapgQ8ihpyrANhVEaIsIFqqpTvHQv
 S/XdpGfML0VRbbh8k9A35wkHMDVGsR6h5TWAaV7NDDed9e02ezREm93Ynt8JRhpc9qLE
 OhOHi0QhOCFMSOftVdCeQ37pUycSup29ZcnfIvWHUtTuIe7mRCYceGUFAOqRra7LNI/l
 miSQibJE1Kj7WQ7GhRvtAf4hL2DIU5aqlZAsxkS+lkWgNoMkVbJ3X+e74OuNCjeKji6o
 AboxUFFWXQOD41vGSxakNL7Hkx9GTfW4llxszhakzSHi12mnM7l31QOSBQnsZt9SwWsv
 r6sw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUwtWp9la9+C27Z1js3XnrLM+usIuoX0i8tBD8JqJoX+w0x5AYqK70eEUb3GvLRByijoifnw0dE9niApOzyyWJQF4I=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy7ll+zVK8CvOjbWNecp3hxXOsjYNGpQSuRlKnHa109utMQ2jVZ
 Y6xWKH5Ni6P3vymfKQ+ihgIdSovH5/kSgowp9EjhRUb/ZnI79yaZ5be/Z3Rtcw4=
X-Gm-Gg: ASbGncvvTIKAmIUZnNhVgvkLho7G/tKsd1WQYmnT/tlELSU4TddPYdlr33Qq3Ky/e03
 CG20ZPMeZ/gI5rLBoU+jFUSqFLXaqKRebW5B1SMq31v9JGO3QEqvf5JQhpcuZ4JsYw3ysRDPG+q
 YSemAJga7+IYUoqPhm80YQ/cvGCDd/nFfTgseXVHp5Jk1b+zPiE5XQ2FFRnwNfmJmCglvSdKyYI
 a7l8mEN71VoUz5TEEoUjATgUfuRnc+YMxLdOWzwDia+mnj9uwkslFCiTALTPN6XKKoA7z55XDcF
 2CgC0rgZMj55YrEUq0y61ViOw7bSODtw2Vc=
X-Google-Smtp-Source: AGHT+IFI5A1FFn/q4E9plQOCPB3xcIBLhIbNwEPSnznmLTFhyxyKrEh1jvaOGs0nK04Q3S1k9Zl6qw==
X-Received: by 2002:a05:6871:2b0e:b0:2c2:d749:82d3 with SMTP id
 586e51a60fabf-2d99449365amr274841fac.27.1745513426395; 
 Thu, 24 Apr 2025 09:50:26 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 586e51a60fabf-2d97364d9c5sm367930fac.7.2025.04.24.09.50.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:24 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:37 -0500
Message-ID: <20250424165020.627193-1-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch set switches from SRCU to using normal locks. This
 required pulling most of the IPMI message handler up to run in kernel threads, 
 which was a good thing, anyway. It also handles some fallou [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.177 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.177 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.177 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u7zmX-0002gN-3f
Subject: [Openipmi-developer] [PATCH 00/23] ipmi: Remove SRCU and handle the
 fallout
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
Cc: Breno Leitao <leitao@debian.org>, "Paul E . McKenney" <paulmck@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch set switches from SRCU to using normal locks.  This required
pulling most of the IPMI message handler up to run in kernel threads,
which was a good thing, anyway.  It also handles some fallout from
that change.

I didn't have a way to thoroughly test the IPMI driver, most of the
work for this was creating a test framework, which required work in
QEMU, the OpenIPMI simulator, and a few other things.  But that's
working now, and it shook out surprisingly few bugs, one in the new
changes and one driver unload issue.

Anyway, here's the first candidate for this.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
